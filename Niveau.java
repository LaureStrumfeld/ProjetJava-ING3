/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package modele;

import java.util.HashMap;
import java.util.Iterator;

import java.util.Map;

/**
 *
 * @author Isabelle
 */
public class Niveau {
    Map <Integer,String> nv=new HashMap<>();
    
    public void add_niveau(String titre){
      int id=nv.size();  
     nv.put(id,titre);
 }    
   
  public void display(){
     if(nv.isEmpty()) {
      System.out.println("Nothing to show");}
      else{ 
     Iterator iterator =nv.entrySet().iterator();
     while(iterator.hasNext()){
         Map.Entry nventry=(Map.Entry) iterator.next();
         System.out.println("Index: "+nventry.getKey()+" Classe :"+nventry.getValue());
     } }    
  }    
}
