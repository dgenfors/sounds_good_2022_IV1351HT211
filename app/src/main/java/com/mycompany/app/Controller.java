/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.app;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author davve
 */
public class Controller {
    private final Connect appdb;
    
    
    public Controller()throws Exception{
        appdb = new Connect ();
    }
    
 
    
    public List <? extends InstrumentDTO> getInstruments(String instrumentName)throws RentException{
         if (instrumentName == null) {
            return new ArrayList<>();
        }
        
        try{
            return appdb.findAvailableInstrument(instrumentName);
        }catch (Exception e){
            throw new RentException("could not find any");
        }
    
    }
    
    public void instrumentRent(int studentId, int instrumentId) throws SQLException, RentException{
        String failureMsg = "could not rent instrument:";
            try {
                appdb.rentInstrument(studentId, instrumentId);
            }catch (Exception e){
                throw new RentException(failureMsg, e);
            }    
    }
    
    public void terminate(int studentId, int instrumentId) throws SQLException, RentException{
        String failureMsg = "could not terminate rental ";
        try{
            appdb.terminateRental(studentId, instrumentId);
        }catch (Exception e){
            throw new RentException(failureMsg, e);
        }
    
    }
     
}
