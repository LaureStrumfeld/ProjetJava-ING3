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
public class Enseignement {
    private int id_enseignement;
    public Enseignement(){
     this.id_enseignement=0;       
    }
     public Enseignement(int id_enseignement){
     this.id_enseignement=id_enseignement;       
    }
    public void setId_enseignement(int id_enseignement) {
   this.id_enseignement=id_enseignement;
    }
   public int getId_enseignement(){
   return this.id_enseignement; 
   }   
}
