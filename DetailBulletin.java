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
public class DetailBulletin {
   private int id_detailBulletin;
   private String appreciation_b;
  
   public DetailBulletin(){
     this.id_detailBulletin=0; 
     this.appreciation_b=null;
   } 
    public DetailBulletin(int id_detailBulletin, String appreciation_b){
     this.id_detailBulletin=id_detailBulletin; 
     this.appreciation_b=appreciation_b;
   }
   public void setId_detailBulletin(int id_bulletin){
   this.id_detailBulletin=id_detailBulletin;
   } 
    public void setAppreciationB(String appreciation_b){
   this.appreciation_b=appreciation_b;
   }
   public int getId_detailBulletin(){
       return this.id_detailBulletin;
   } 
   public String getAppreciationB(){
       return this.appreciation_b;
   }
   public void display(){
     System.out.println("L'id du bulletin est:"+id_detailBulletin);
     System.out.println("L' appréciation générale est :"+appreciation_b);
   }    
}
   
