/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

/**
 *
 * @author Isabelle
 */
public class Inscription {
    private  int id_inscription;
     public Inscription(){
     this.id_inscription=0;       
    }
     public Inscription(int id_inscription){
     this.id_inscription=id_inscription;       
    }
    public void setId_inscription(int id_inscription) {
   this.id_inscription=id_inscription;
    }
   public int getId_inscription(){
   return this.id_inscription; 
   } 
    
}
