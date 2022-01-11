/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.app;

/**
 *
 * @author davve
 */
public class Instrument implements InstrumentDTO {
    private String instrument;
    private String brand;
    private int price;
    private int instrumentId;
    
    
    
    public Instrument(String instrument, String brand, int price, int instrumentId){
        this.instrument = instrument;
        this.brand = brand;
        this.price = price;
        this.instrumentId = instrumentId;
    }
    
    public String getInstrument(){
    return instrument;
    }
    
    
    public String getBrand(){
    return brand;
    }
    
    public int getPrice(){
    return price;
    }
    
    public int getInstrumentId(){
    return instrumentId;
    }
    
}
