/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.app;

/**
 *
 * @author davve
 */
public class RentException extends Exception {
    
    public RentException(String reason){
        super(reason);
    }
    
   public RentException(String reason, Throwable rootCause){
       super(reason, rootCause);
   }
    
}
