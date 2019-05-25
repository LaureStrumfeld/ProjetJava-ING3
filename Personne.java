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
public class Personne {
    private int id_personne;
    private String nom_personne;
    private String prenom_personne;
   private  boolean type;// true élève false prof
   public Personne(){
       this.id_personne=0;
       this.nom_personne=null;
       this.prenom_personne=null;
       this.type=true;
   } 
   public Personne(int id,String nom, String prenom,boolean type ){
       this.id_personne=id;
       this.nom_personne=nom;
       this.prenom_personne=prenom;
       this.type=type;
   }
   public void setId_personne(int id_personne){
   this.id_personne=id_personne;    
   } 
    public void setNom_personne(String nom_personne){
   this.nom_personne=nom_personne;    
   } 
    public void setPrenom_personne(String prenom_personne){
   this.prenom_personne=prenom_personne;    
   }
    public void setType(boolean type){
    this.type=type;
    }    
   public int getId_personne(){
    return this.id_personne;
   } 
    public String getNom_personne(){
    return this.nom_personne;
   } 
   public String getPrenom_personne(){
    return this.prenom_personne;
   }
    public boolean getType(){
    return this.type;
   } 
}
