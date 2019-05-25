/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;


public class Evaluation {
    
    private int id_evaluation;
    private int id_db; //id detail bulletin
    private double note;
    private String appreciation_e;
    private int id_personne; // l'evaluation est relié à l'id de la personne
    public Evaluation(){
      this.id_evaluation=0;
      this.id_db=0;
      this.note=0.0;
      this.appreciation_e=null;    
    } 
    public Evaluation(int id_evaluation,int id_db,double note, String appreciation_e,int id){
      this.id_evaluation=id_evaluation;
      this.id_db=id_db;
      this.note=note;
      this.appreciation_e=appreciation_e; 
      this.id_personne=id;
    } 
    public void setId_evaluation(int id_evaluation){
        this.id_evaluation=id_evaluation;
    }
    public void setId_db(int id_db){
        this.id_db=id_db;
    }
     public void setNote(double note){
        this.note=note;
    } 
     public void setAppreciation_e(String appreciation_e){
        this.appreciation_e=appreciation_e;
     }  
     public int getId_evaluation(){
      return this.id_evaluation;
     } 
      public int getId_db(){
      return this.id_db;
     } 
      public double getNote(){
      return this.note;
     }
      public String getAppreciation_e(){
      return this.appreciation_e;
     } 
     public void display(){
      System.out.println("La note est de :"+note);
      System.out.println("L'appreciation est "+appreciation_e);
     }    
}
