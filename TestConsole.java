package jdbcv2018;
import java.util.Map;
import java.util.Scanner;
import java.awt.event.ActionListener;
import modele.Personne;
import modele.initialize_all;
import modele.save_all;
import modele.Evaluation;
import vue.FenetreGraphique;
import javax.swing.JFrame;
public class TestConsole{
public static void main(String[] args){
   // FenetreGraphique fen = new FenetreGraphique();
   // JFrame frame = new() frame.setContentPane(fen.home);
   // frame.setVisible(true);
   /* initialize_all i = new initialize_all();
    i.initialize();
    Controleur c = new Controleur();
    boolean sortie=false;
    while(sortie==false){
    System.out.println("Choisissez ce que vous voulez faire");
    System.out.println("1.Ajouter une note à un élève");
    System.out.println("2.Supprimer une note à un élève");
    System.out.println("3.Modifier une note à un élève");
    System.out.println("4.Voir toutes les notes élèves");
    System.out.println("5.Ajouter votre matière au bulletin d'un élève");
    System.out.println("6.Ajouter un bulletin");
    System.out.println("7.Voir un bulletin");
    System.out.println("8.Modifier appréciation du bulletin");
    System.out.println("9.Sortir");
    Scanner sc= new Scanner(System.in);
    int choix = sc.nextInt();


        switch(choix){
            case 1:{
                System.out.println("Entrez le numero de l'élève: ");
                int id_e= sc.nextInt();
                System.out.println("Entrez le numero de la matière");
                System.out.println("1.Maths");
                System.out.println("2.Français");
                System.out.println("3.LV1");
                System.out.println("4.LV2");
                System.out.println("5.SVT");
                Scanner sc2=new Scanner(System.in);
                int matiere =  sc2.nextInt();
                System.out.println("Entrez la note: ");
                Scanner sc3= new Scanner(System.in);
                double note= sc3.nextDouble();
                String appreciation_e=null;
                if(note<=5.0) {

                    appreciation_e = "Travail insatisfaisant";
                }
                else if(note >5.0 && note < 8){
                    appreciation_e="Trop faible, beaucoup de lacunes";
                }
                else if(note >=8.0 && note < 11){
                    appreciation_e="Trop juste,encore un effort!";
                }
                else if(note >=11.0 && note < 13){
                    appreciation_e="Ensemble satisfaisant";
                }
                else if(note >=13.0 && note < 16){
                    appreciation_e="Bien";
                }
                else if(note >=16 && note < 18){
                    appreciation_e="Très bien!";
                }
                else if(note >=18.0 && note <= 20.0){
                    appreciation_e="Excellent!";
                }
                int taille = c.tab_evaluation.size();
                int id_eval=0;
                if(taille!=0){
                    id_eval=taille+1;
                }
                taille= c.tab_dbulletin.size();
                int id_db=0;
                if(taille!=0){
                    id_db=taille+1;
                }
                System.out.println("Id_eval: "+id_eval);
                System.out.println("Id_db: "+id_db);
                Evaluation e= new Evaluation( id_eval, id_db, note,appreciation_e,id_e,matiere);
                taille=c.tab_evaluation.size()+1;
                c.tab_evaluation.put(taille, e);

                break;
            }
            case 2:{
                double note_e=0.0;
                System.out.println("Rentrez le numero de l'élève'");
                int id= sc.nextInt();
                System.out.println("VOici les notes de l'eleve");
                for(Map.Entry<Integer, Evaluation> entry : c.tab_evaluation.entrySet()) {

                    Evaluation value = entry.getValue();
                    if(value.getId_personne()==id)
                    {
                        note_e=value.getNote();
                        System.out.print("Note : "+note_e);
                        System.out.println(" Id evaluation: "+value.getId_evaluation());

                    }
                }

                System.out.println("Entrez l'id de la note  à supprimer");
                Scanner sc2= new Scanner(System.in);
               int id_note=sc2.nextInt();
                c.supprimer_notes(id_note,id);
                break;
            }
            case 3:{
                double note_e=0.0;
                System.out.println("Rentrez le numero de l'élève'");
                int id= sc.nextInt();
                System.out.println("Voici les notes de l'eleve");
                for(Map.Entry<Integer, Evaluation> entry : c.tab_evaluation.entrySet()) {

                    Evaluation value = entry.getValue();
                    if(value.getId_personne()==id)
                    {
                        note_e=value.getNote();
                        System.out.print("Note : "+note_e);
                        System.out.println(" Id evaluation: "+value.getId_evaluation());

                    }
                }

                System.out.println("Entrez l'id de la note  à modifier");
                Scanner sc2= new Scanner(System.in);
                int id_note=sc2.nextInt();
                System.out.println("Donner la note modifiée");
                double note_modif=sc2.nextDouble();
                c.modifier_notes(id_note,id,note_modif);
                break;
            }

            case 4:{
                System.out.println("Rentrez l'id de l'élève");
                int id = sc.nextInt();
                for(Map.Entry<Integer, Evaluation> entry : c.tab_evaluation.entrySet()) {

                    Evaluation value = entry.getValue();
                    if(value.getId_personne()==id)
                    {
                       double note_e=value.getNote();
                       int matiere=value.getId_discipline();
                       String mat=null;
                       if(matiere==1){
                           mat="Maths";
                       }else if(matiere==2){
                        mat="Français";
                    } if(matiere==3){
                        mat="LV1";
                    } if(matiere==4){
                        mat="LV2";
                    } if(matiere==5){
                        mat="SVT";
                    }

                       String appreciation=value.getAppreciation_e();
                        System.out.println("Note : "+note_e);
                        System.out.println("Matiere: "+mat);
                        System.out.println("Appreciation: "+appreciation);

                    }
                }break;
            }
            case 5: {

                System.out.println("Quel est l'id de l'élève?");
                int id = sc.nextInt();
                System.out.println("Quelle est votre matière enseignée?");
                int matiere = sc.nextInt();

                    System.out.println("Quel est l'id du bulletin?");
                    int id_bulletin = sc.nextInt();
                    System.out.println("L'id du bulletin "+id_bulletin);
                    c.ajouter_matiere_bulletin(id, matiere, id_bulletin);

                 break;
            }
            case 6:{
                System.out.println("Rentrez l'id de l'étudiant");
                int id=sc.nextInt();
                c.ajouter_bulletin(id);
                break;
            }
            case 7:{
                System.out.println("Rentrez l'id de l'étudiant pour voir le bulletin:");
                int id=sc.nextInt();
                System.out.println("Rentrez l'id du bulletin: ");
                int id_bull=sc.nextInt();
                c.display_bulletin_of(id,id_bull);
                break;
            }
            case 8:{
                System.out.println("Donner l'id de la personne");
                int id_b=sc.nextInt();
                System.out.println("Quelle est la nouvelle appréciation?");
                Scanner sc2=new Scanner(System.in);
                String app= sc2.nextLine();
                c.modifier_bulletin(id,trim,app);
                save_all p = new save_all();
                p.save();
                break
            }
            case 9:{
                save_all p = new save_all();
                p.save();
                sortie=true;
                break;
            }
        }

}*/

}

}
