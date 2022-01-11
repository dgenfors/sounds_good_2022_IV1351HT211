/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.app;



/**
 *
 * @author davve
 */
public class Main {
    public static void main (String[] args){
        try {
            (new BlockingInterpreter(new Controller())).handleCmds();
        
        }catch (Exception e){
            System.out.println("could not connect to database");
        }
    
    }
    
    
}
