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
public class Classe {
    private int id_classe;
    private String nom_classe;
 public Classe(){
    this.id_classe=0;
    this.nom_classe=null;
 }

public Classe(int id_classe, String nom_classe){
    this.id_classe=id_classe;
    this.nom_classe=nom_classe;
 }
public void setId_Classe(int id_classe){
    this.id_classe= id_classe;
}
public void setNom_Classe(String nom_classe){
    this.nom_classe= nom_classe;
}
public int getId_Classe(){
return this.id_classe;    
} 
public String getNom_Classe(){
return this.nom_classe;    
} 
public void display(){
 System.out.println("L'id de la classe est :"+id_classe);
 System.out.println("Le nom de la classe est :"+nom_classe);
}   
}
