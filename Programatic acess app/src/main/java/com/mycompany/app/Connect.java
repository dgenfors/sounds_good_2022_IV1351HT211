/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.app;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author davve
 */
public class Connect {
    private static final String brand_table_name = "brand";
    private static  final String rent_table_name ="rent";
    private static final String instrument_table_name = "instrument";
    private static final String end_date_column_name = "duration";
    private static final String student_id_column_name ="student_id";
    private static final String instrument_id_column_name ="instrument_id";
    private static final String type_of_instrument_column_name = "type_of_instrument";
    private static final String rent_instrument_price_column_name = "rent_instrument_price";
    private static final String brand_id_instrument_table_column_name = "instrument.brand_id";
    private static final String price = "rent_instrument_price";
    private static final String instrument_id_table_instrument = "instrument.id";
    
 
    
    
    private Connection connection;
    private PreparedStatement terminateRentalStmt;
    private PreparedStatement showRentedInstrumentStmt;
    private PreparedStatement insertRentedInstrumentStmt;
    private PreparedStatement countAmountOfRents;
    
    
    public Connect () {
      try {  
            connectdb();
            prepareStatements();
        
        }catch (SQLException  ex){
        ex.printStackTrace();
        } 
    }
    
    public void connectdb(){
        try {
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sound_good_2021"
                    + "?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", 
                    "root", "aufgedyng12");

            connection.setAutoCommit(false);
        } catch (SQLException  ex){
            ex.printStackTrace();
        } 
    
    }
    
 
       
       
    public List<Instrument> findAvailableInstrument(String instrument) throws SQLException{
         String failureMsg = "find any instrument";
         List<Instrument> instruments = new ArrayList<>();
         ResultSet result = null;

         try{ 
             showRentedInstrumentStmt.setString(1, instrument);
             result = showRentedInstrumentStmt.executeQuery();
                if (!result.isBeforeFirst()){
                    System.out.println("no available instrument of that type found");
                }
                while(result.next()){
                 instruments.add(new Instrument(result.getString(type_of_instrument_column_name), 
                                                result.getString(brand_table_name),
                                                result.getInt(price),
                                                result.getInt(instrument_id_table_instrument )));
             }
             connection.commit();
         }catch (SQLException sqle){
         handleException(failureMsg, sqle);
         }finally {
            closeResultSet(failureMsg, result);
         }
         return instruments;
    }
         
         
     
        
        
    
   
    
    public void terminateRental(int studentId, int instrumentId) throws SQLException{
         String failureMsg = "terminate Rental";
        try{
            terminateRentalStmt.setInt(1, studentId);
            terminateRentalStmt.setInt(2,instrumentId);
            int updaterows =  terminateRentalStmt.executeUpdate();
            
            if (updaterows != 1){
                handleException(failureMsg, null);
                }
            connection.commit();
        }catch (SQLException sqle) {
            handleException(failureMsg, sqle);
        }
    }
    
    public void rentInstrument(int studentId, int instrumentId) throws SQLException{
        ResultSet result = null;
        int totalrents;
        String failureMsg = "rent instrument";
        
        result =  amountOfRents(studentId);
        result.next();
        totalrents = result.getInt(1);
       try { if (totalrents> 1){
            System.out.println("Can't rent anymore instruments");
            
            } 
                else {
                insertRentedInstrumentStmt.setInt(1, instrumentId);
                insertRentedInstrumentStmt.setInt(2, studentId);
                int updaterows = insertRentedInstrumentStmt.executeUpdate();
            
                if(updaterows !=1){
                handleException(failureMsg, null);
                }
                connection.commit();
                    }
            }catch (SQLException sqle){
           handleException(failureMsg, sqle);
            }        
    }
    private void prepareStatements() throws SQLException {
        
        terminateRentalStmt = connection.prepareStatement("UPDATE " +rent_table_name
   + " SET " + end_date_column_name + " = date(now()) WHERE " + student_id_column_name + "=? AND " + instrument_id_column_name + "=? AND " + end_date_column_name + " is NULL");
        
       
        showRentedInstrumentStmt = connection.prepareStatement ("select distinct " + instrument_id_table_instrument + ", " + 
                                                                brand_table_name + 
                                                                ", " + price + ", " + 
                                                                type_of_instrument_column_name
                                                                + " from instrument " +
                                                                " inner join brand ON instrument.brand_id = brand.id " +
                                                                " where instrument.id not in ( " +
                                                                " select rent.instrument_id from rent " +
                                                                " where rent.duration is null or (duration is not null and date(duration)>date(now())) and rent.instrument_id=instrument.id " +
                                                                  ") AND " + type_of_instrument_column_name + " =?" +
                                                                " order by " + type_of_instrument_column_name);
        insertRentedInstrumentStmt = connection.prepareStatement("INSERT INTO " + rent_table_name +
                                                                  "( start_date, " + instrument_id_column_name +
                                                                    ", " + student_id_column_name + " ) VALUES (date(now()),?,?)");
        countAmountOfRents = connection.prepareStatement("SELECT COUNT(" + student_id_column_name + 
                                                           ") from " + rent_table_name + 
                                                          " where " + end_date_column_name + " is null and " +student_id_column_name + "=?");
    
    }
    
    private void handleException(String failureMsg, Exception cause) {
        String completeFailureMsg = failureMsg;
        System.out.println("could not " +completeFailureMsg);
        try {
            connection.rollback();
            } catch (SQLException rollbackExc) {
            completeFailureMsg = completeFailureMsg + 
            ". Also failed to rollback transaction because of: " + rollbackExc.getMessage();
            }
     }
    
     private void closeResultSet(String failureMsg, ResultSet result) throws SQLException {
        try {
            result.close();
        } catch (Exception e) {
            throw new SQLException(failureMsg + " Could not close result set.", e);
        }
    }
    
     private ResultSet amountOfRents(int studentId) throws SQLException{
         String failureMsg = "fail";
         PreparedStatement stmtToExecute;
         stmtToExecute = countAmountOfRents;
         ResultSet result;
         try{
             stmtToExecute.setInt(1, studentId);
             result = stmtToExecute.executeQuery();

             return result;
                 
            
             
            }catch (SQLException sqle){
                handleException(failureMsg, sqle);
            }
         
         
         return null;
     }
    
    
}


