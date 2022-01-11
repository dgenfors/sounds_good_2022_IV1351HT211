/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.app;


import java.util.List;
import java.util.Scanner;

/**
 *
 * @author davve
 */
public class BlockingInterpreter {
    private static final String PROMPT = "> ";
    private final Scanner console = new Scanner(System.in);
    private Controller ctrl;
    private boolean keepReceivingCmds = false;
    
    public BlockingInterpreter(Controller ctrl) {
        this.ctrl = ctrl;
    }
    
     public void stop() {
        keepReceivingCmds = false;
    }
    
    public void handleCmds() {
         keepReceivingCmds = true;
         while (keepReceivingCmds){
             try{
                CmdLine cmdLine = new CmdLine(readNextLine());
                switch (cmdLine.getCmd()){
                    case HELP:
                        for (Command command : Command.values()){
                            if(command == Command.ILLEGAL_COMMAND){
                                continue;
                             
                            }
                            System.out.println(command.toString().toLowerCase());
                        }
                        break;
                    case QUIT:
                        keepReceivingCmds = false;
                        break;
                    case LIST:
                        List <? extends InstrumentDTO> instruments = null;
                        instruments = ctrl.getInstruments(cmdLine.getParameter(0));
                            for (InstrumentDTO instrument : instruments){
                                System.out.println("Instrument: " + instrument.getInstrument() + ", "
                                                   +"Brand: " +instrument.getBrand() + ", "
                                                   +"Price: " +instrument.getPrice() + ", "
                                                   +"InstrumentId " + instrument.getInstrumentId()) ;
                            }
                          break;
                    case RENT:
                        ctrl.instrumentRent(Integer.parseInt(cmdLine.getParameter(0)),Integer.parseInt(cmdLine.getParameter(1)));
                        break;
                    case TERMINATE:
                        ctrl.terminate(Integer.parseInt(cmdLine.getParameter(0)), Integer.parseInt(cmdLine.getParameter(1)));
                        break;
                    default:
                        System.out.println("illegal command");
                 
                }
             }catch (Exception e){
                System.out.println("Operation failed");
                System.out.println(e.getMessage());
                e.printStackTrace();
             }
         
         
         }
    
    }
    
    private String readNextLine() {
        System.out.print(PROMPT);
        return console.nextLine();
    }
      
    
}
