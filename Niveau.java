/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;
import java.util.ArrayList;
/**
 *
 * @author Isabelle
 */
public class Niveau {
    
    private String nom_niveau;
    private int id_niveau;
    private ArrayList <Classe> liste_classe_niveau = new ArrayList <Classe>();
    public Niveau(){
    this.nom_niveau=null;
    this.id_niveau=0;
    liste_classe_niveau=null;
    } 
     public Niveau(String nom_niveau,int id_niveau, ArrayList <Classe> liste){
    this.nom_niveau=nom_niveau;
    this.id_niveau=id_niveau;
    liste_classe_niveau=liste;
    } 
    public void setNom_niveau(String nom_niveau){
     this.nom_niveau=nom_niveau;   
    }
    public void setId_niveau(int id_niveau){
     this.id_niveau=id_niveau;   
    }
    public void setListe_classe(ArrayList <Classe> liste_classe_niveau ){
     this.liste_classe_niveau =liste_classe_niveau ;   
    }
    public String getNom_niveau(){
     return this.nom_niveau;   
    }
    public int getId_niveau(){
     return this.id_niveau;   
    }
    public ArrayList <Classe> getListe_classe(){
     return this.liste_classe_niveau;   
    }
}
