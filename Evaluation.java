/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;


public class Evaluation {
    
    private int id_evaluation;
    private String note;
    private String appreciation_e;
    public Evaluation(){
      this.id_evaluation=0;
      this.note=null;
      this.appreciation_e=null;    
    } 
    public Evaluation(int id_evaluation,String note, String appreciation_e){
      this.id_evaluation=id_evaluation;
      this.note=note;
      this.appreciation_e=appreciation_e;    
    } 
    public void setId_evaluation(int id_evaluation){
        this.id_evaluation=id_evaluation;
    }
     public void setNote(String note){
        this.note=note;
    } 
     public void setAppreciation_e(String appreciation_e){
        this.appreciation_e=appreciation_e;
     }  
     public int getId_evaluation(){
      return this.id_evaluation;
     } 
      public String getNote(){
      return this.note;
     }
      public String getAppreciation_e(){
      return this.appreciation_e;
     } 
}
