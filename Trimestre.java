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
public class Trimestre {
   private int id_trimestre;
   private int numero;
   private int debut;
   private int fin;
   private int id_annee;
   public Trimestre(){
     this.id_trimestre=0;
     this.numero=0;
     this.debut=0;
     this.fin=0;
     this.id_annee=0;
   } 
    public Trimestre(int id_trimestre, int numero, int debut, int fin,int id_annee){
     this.id_trimestre=id_trimestre;
     this.numero=numero;
     this.debut=debut;
     this.fin=fin;
     this.id_annee=id_annee;
     
   }
   public void setId(int id){
   this.id_trimestre=id;
   }
   public void setNumero(int numero){
   this.numero=numero;
   }
    public void setDebut(int debut){
   this.debut=debut;
   }
     public void setFin(int fin){
   this.fin=fin;
   }
   public int getId(){
     return this.id_trimestre;  
   }   
   public int getNumero(){
     return this.numero;  
   }
    public int getDebut(){
     return this.debut;  
   } 
   public int getFin(){
     return this.fin;  
   }  
    public int getId_annee(){
     return this.id_annee;  
   } 
   public void display(){
    System.out.println("L'id du trimestre est :"+id_trimestre);
    System.out.println("Nous sommes le "+numero+ "e du trimestre");
    System.out.println("Le debut est "+debut+ " la fin est "+fin);
   }   
}
