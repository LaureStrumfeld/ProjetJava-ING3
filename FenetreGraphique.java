package vue;

import modele.*;
import jdbcv2018.Controleur;

import java.util.Map;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import javax.swing.table.DefaultTableModel;
public class FenetreGraphique  extends JFrame {

    public Container home;
    private JTabbedPane gerer_note;
    private JTabbedPane add_note;
    private JTabbedPane supp_note;
    private JTabbedPane modif_note;
    private JTextField field_id_e;
    private JTextField field_note;
    private JButton add_notes_b;
    private JComboBox box_mat;
    private JLabel result;
    private JTabbedPane voir_notes;
    private JTextField id_e_f;
    private JTable tab_notes;
    private JLabel id_e_field;
    private JLabel id_e_2;
    private JButton see_note;
    private JTextField id_n_field;
    private JButton Supprimer;
    private JLabel result_supp;
    private JTextField id_e_modif_field;
    private JButton voirLesNotesDeButton;
    private JTable tab_notes_modif;
    private JTextField note_ch_field;
    private JButton modifierNoteButton;
    private JTextField id_note_ch_field;
    private JLabel result_change;
    private JTextField mon_id;
    private JButton voirToutesMesNotesButton;
    private JTable tab_mesnotes;
    private JTabbedPane bulletin;
    private JTextField id_e_bull;
    private JComboBox trim;
    private JTextArea appre_field;
    private JButton créerBulletinButton;
    private JLabel creation;
    private JTabbedPane add_matiere;
    private JTextField id_e_a;
    private JComboBox matiere_bull;
    private JTextField app_matiere;
    private JButton add_matiere_butt;
    private JPanel add_mat_bull;
    private JComboBox comboBox1;
    private JTabbedPane tabbedPane1;
    private JTextField id_e_modif_app;
    private JComboBox trim_modif_app;
    private JTextField app_modif;
    private JButton modifierLAppréciationButton;
    private JLabel bul_trouve;
    private JLabel mat_ex;
    private JTabbedPane tabbedPane2;
    private JTextField id_e_bulletin;
    private JComboBox trim_aff_bull;
    private JButton afficherLeBulletinButton;
    private JTable table_bull;
    private JTextField bull_debt;
    private JTextField bull_fint;
    private JTextField bull_class;
    private JTextField bull_prenom;
    private JTextField bull_nom;

    public FenetreGraphique() {
        initialize_all i = new initialize_all();
        i.initialize();
        Controleur c = new Controleur();
      /*  valid_notes.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

            }
        });*/
        add_notes_b.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {


                int id_e = Integer.parseInt(field_id_e.getText());
                String matiere = box_mat.getSelectedItem().toString();
                int mat = 0;
                if (matiere.equals("Maths")) {
                    mat = 1;
                } else if (matiere.equals("Français")) {
                    mat = 2;
                }
                double note = Double.parseDouble(field_note.getText());
                String appreciation_e = null;
                if (note <= 5.0) {

                    appreciation_e = "Travail insatisfaisant";
                } else if (note > 5.0 && note < 8) {
                    appreciation_e = "Trop faible, beaucoup de lacunes";
                } else if (note >= 8.0 && note < 11) {
                    appreciation_e = "Trop juste,encore un effort!";
                } else if (note >= 11.0 && note < 13) {
                    appreciation_e = "Ensemble satisfaisant";
                } else if (note >= 13.0 && note < 16) {
                    appreciation_e = "Bien";
                } else if (note >= 16 && note < 18) {
                    appreciation_e = "Très bien!";
                } else if (note >= 18.0 && note <= 20.0) {
                    appreciation_e = "Excellent!";
                }
                int taille = c.tab_evaluation.size();
                int id_eval = 0;
                if (taille != 0) {
                    id_eval = taille + 1;
                }
                taille = c.tab_dbulletin.size();
                int id_db = 0;
                if (taille != 0) {
                    id_db = taille + 1;
                }

                Evaluation eval = new Evaluation(id_eval, id_db, note, appreciation_e, id_e, mat);
                taille = c.tab_evaluation.size() + 1;
                c.tab_evaluation.put(taille, eval);
                save_all p = new save_all();
                p.save();
                result.setText("Note Ajoutée");
            }
        });
        see_note.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int id_e = Integer.parseInt(id_e_f.getText());
                ArrayList<Integer> id_n = new ArrayList();
                ArrayList<Double> note = new ArrayList();
                for (Map.Entry<Integer, Evaluation> entry : c.tab_evaluation.entrySet()) {
                    Evaluation value = entry.getValue();
                    if (value.getId_personne() == id_e) {
                        double note_e = value.getNote();
                        int id_note = value.getId_evaluation();
                        id_n.add(id_note);
                        note.add(note_e);

                    }
                }
                DefaultTableModel model = new DefaultTableModel();
                Object[] colonneNom = new Object[2];
                colonneNom[0] = "Id de la note";
                colonneNom[1] = "Note";
                model.setColumnIdentifiers(colonneNom);
                Object[] ligne_data = new Object[2];
                for (int i = 0; i < note.size(); i++) {
                    ligne_data[0] = id_n.get(i);
                    ligne_data[1] = note.get(i);
                    model.addRow(ligne_data);
                }
                tab_notes.setModel(model);
            }
        });
        Supprimer.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int id_e = Integer.parseInt(mon_id.getText());


                save_all p = new save_all();
                p.save();

            }
        });
        voirLesNotesDeButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int id_e = Integer.parseInt(id_e_modif_field.getText());
                System.out.println("Lid de l'élève est: " + id_e);
                ArrayList<Integer> id_n = new ArrayList();
                ArrayList<Double> note = new ArrayList();
                for (Map.Entry<Integer, Evaluation> entry : c.tab_evaluation.entrySet()) {
                    Evaluation value = entry.getValue();
                    if (value.getId_personne() == id_e) {
                        double note_e = value.getNote();
                        int id_note = value.getId_evaluation();
                        id_n.add(id_note);
                        note.add(note_e);

                    }
                }
                DefaultTableModel model2 = new DefaultTableModel();
                Object[] colonneNom2 = new Object[2];
                colonneNom2[0] = "Id de la note";
                colonneNom2[1] = "Note";
                model2.setColumnIdentifiers(colonneNom2);
                Object[] ligne_data2 = new Object[2];
                for (int i = 0; i < note.size(); i++) {
                    ligne_data2[0] = id_n.get(i);
                    ligne_data2[1] = note.get(i);
                    model2.addRow(ligne_data2);
                }
                tab_notes_modif.setModel(model2);

            }
        });
        modifierNoteButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

                int id_e = Integer.parseInt(id_e_modif_field.getText());
                int id_note = Integer.parseInt(id_note_ch_field.getText());
                double note_modif = Double.parseDouble(note_ch_field.getText());
                c.modifier_notes(id_note, id_e, note_modif);
                save_all p = new save_all();
                p.save();
                result_change.setText("Note modifiée");

            }
        });
        voirToutesMesNotesButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int id_e = Integer.parseInt(mon_id.getText());
                ArrayList<String> matiere = new ArrayList();
                ArrayList<Double> note = new ArrayList();
                ArrayList<String> appreciation = new ArrayList();
                for (Map.Entry<Integer, Evaluation> entry : c.tab_evaluation.entrySet()) {
                    Evaluation value = entry.getValue();
                    if (value.getId_personne() == id_e) {
                        double note_e = value.getNote();
                        int mat = value.getId_discipline();
                        String matt=null;
                        if(mat==1){matt="Maths";}
                        else if(mat==2){matt="Français";}
                        else{matt="Matière non renseignée";}
                        matiere.add(matt);
                        note.add(note_e);
                        String app=value.getAppreciation_e();
                        appreciation.add(app);

                    }
                }
                DefaultTableModel model2 = new DefaultTableModel();
                Object[] colonneNom2 = new Object[3];
                colonneNom2[0] = "Notes";
                colonneNom2[1] = "Matières";
                colonneNom2[1] = "Appreçiations";
                model2.setColumnIdentifiers(colonneNom2);
                Object[] ligne_data2 = new Object[3];
                for (int i = 0; i < note.size(); i++) {
                    ligne_data2[0] = note.get(i);
                    ligne_data2[1] = matiere.get(i);
                    ligne_data2[2] = appreciation.get(i);
                    model2.addRow(ligne_data2);
                }
                tab_mesnotes.setModel(model2);


            }
        });
        créerBulletinButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int id_e = Integer.parseInt(id_e_bull.getText());
                String trimestre = trim.getSelectedItem().toString();
                String appreciation = appre_field.getText();
                int id_trim=0;
                if(trimestre.equals("01-09-2018")){
                    id_trim=1;
                }else if(trimestre.equals("02-12-2018")){
                    id_trim=2;
                }else if(trimestre.equals("02-03-2019")){
                    id_trim=3;
                }else if(trimestre.equals("01-09-2019")){
                    id_trim=4;
                }else if(trimestre.equals("02-12-2019")){
                    id_trim=5;
                }else if(trimestre.equals("02-03-2020")){
                    id_trim=6;
                }else{id_trim=0;}
               boolean bull_existant= c.ajouter_bulletin(id_e, id_trim, appreciation);
                save_all p = new save_all();
                p.save();
               if(bull_existant==false){ creation.setText("Bulletin créé");}
               else{creation.setText("Bulletin déjà créé pour ce semestre et cet élève");}
            }
        });
        add_matiere_butt.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int id_e = Integer.parseInt(id_e_a.getText());
                String mat = matiere_bull.getSelectedItem().toString();
                String trimestre = trim.getSelectedItem().toString();
                int matiere=0;
                if(mat.equals("Maths")){matiere=1;}
                else if (mat.equals("Français")) {
                    matiere=2;
                }
                int id_trim=0;
                if(trimestre.equals("01-09-2018")){
                    id_trim=1;
                }else if(trimestre.equals("02-12-2018")){
                    id_trim=2;
                }else if(trimestre.equals("02-03-2019")){
                    id_trim=3;
                }else if(trimestre.equals("01-09-2019")){
                    id_trim=4;
                }else if(trimestre.equals("02-12-2019")){
                    id_trim=5;
                }else if(trimestre.equals("02-03-2020")){
                    id_trim=6;
                }else{id_trim=0;}
                String appreciation=app_matiere.getText();
               boolean mat_exist= c.ajouter_matiere_bulletin(id_e, matiere, id_trim,appreciation);
               if(mat_exist==false){
                   mat_ex.setText("Matière ajoutée au bulletin");
               }else{
                   mat_ex.setText("Matière déjà existante au bulletin");
               }
                save_all p = new save_all();
                p.save();

            }
        });
        modifierLAppréciationButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int id_e = Integer.parseInt(id_e_modif_app.getText());
                String trimestre = trim_modif_app.getSelectedItem().toString();
                int id_trim=0;
                if(trimestre.equals("01-09-2018")){
                    id_trim=1;
                }else if(trimestre.equals("02-12-2018")){
                    id_trim=2;
                }else if(trimestre.equals("02-03-2019")){
                    id_trim=3;
                }else if(trimestre.equals("01-09-2019")){
                    id_trim=4;
                }else if(trimestre.equals("02-12-2019")){
                    id_trim=5;
                }else if(trimestre.equals("02-03-2020")){
                    id_trim=6;
                }else{id_trim=0;}
                String appreciation= app_modif.getText();
                boolean bull_trouve=  c.modifier_bulletin( id_e,id_trim,appreciation);
                if(bull_trouve ==false){bul_trouve.setText("Aucun Bulletin trouvé réessayez");}
                else if(bull_trouve==true){bul_trouve.setText("Appreciation modifiée");}
                save_all p = new save_all();
                p.save();
            }
        });
        afficherLeBulletinButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int id_e = Integer.parseInt(id_e_bulletin.getText());
                String trimestre = trim_aff_bull.getSelectedItem().toString();
                int id_trim=0;
                if(trimestre.equals("01-09-2018")){
                    id_trim=1;
                }else if(trimestre.equals("02-12-2018")){
                    id_trim=2;
                }else if(trimestre.equals("02-03-2019")){
                    id_trim=3;
                }else if(trimestre.equals("01-09-2019")){
                    id_trim=4;
                }else if(trimestre.equals("02-12-2019")){
                    id_trim=5;
                }else if(trimestre.equals("02-03-2020")){
                    id_trim=6;
                }else{id_trim=0;}
                int id_bulletin_selec=0;
                int id_classe=0;
                int id_inscription=0;
                int id_discipline=0;
                int id_db=0;
                int id_prof=0;
                int id_enseignement=0;
                int id_niveau=0;
                String debut=null;
                String fin=null;
                String nom_niveau=null;
                String nom_classe= null;
                String appreciation_db=null;
                ArrayList <Double> moyenne= new ArrayList<Double>();
                ArrayList <String> nom_proff= new ArrayList<String>();
                ArrayList <String> nom_matiere= new ArrayList<String>();
                ArrayList <String> app_db= new ArrayList<String>();
                double moy=0;
                String matiere=null;
                String nom_prof=null;
                String nom_eleve=null;
                String prenom_eleve=null;

                for (Map.Entry<Integer, Inscription> entry : c.tab_inscription.entrySet()) {
                    Inscription value = entry.getValue();
                    if (value.getId() == id_e) {
                        id_classe = value.getId_classe();
                        id_inscription = value.getId_inscription();

                    } for (Map.Entry<Integer, Bulletin> entry11 : c.tab_bulletin.entrySet()) {
                        Bulletin value11 = entry11.getValue();
                        if((value11.getId_insc() == id_inscription)&& (id_trim==value11.getId_trim()) ) {
                           id_bulletin_selec=value11.getId();
                        }
                    }
                    for (Map.Entry<Integer, Personne> entry9 : c.tab_personne.entrySet()) {
                        Personne value9 = entry9.getValue();
                        if (value9.getId_personne() == id_e) {
                            nom_eleve=value9.getNom_personne();
                            prenom_eleve=value9.getPrenom_personne();
                        }
                    }
                    for (Map.Entry<Integer, Classe> entry4 : c.tab_classe.entrySet()) {
                        Classe value4 = entry4.getValue();
                        if (value4.getId_Classe() == id_classe) {
                            nom_classe=value4.getNom_Classe();
                            id_niveau=value4.get_niveau();
                        }
                    }

                        for (Map.Entry<Integer, Trimestre> entry10 : c.tab_trimestre.entrySet()) {
                            Trimestre value10 = entry10.getValue();
                            if (value10.getId() == id_trim) {
                                debut=value10.getDebut();
                                fin=value10.getFin();

                            }
                        }
                    }
                    for (Map.Entry<Integer, DetailBulletin> entry3 : c.tab_dbulletin.entrySet()) {
                        DetailBulletin value3 = entry3.getValue();
                        if (value3.getId_bulletin() == id_bulletin_selec) {
                            id_db = value3.getId_detailBulletin();
                            moy=c.get_total_note(id_db);
                            moyenne.add(moy);
                            appreciation_db=value3.getAppreciationB();
                           app_db.add(appreciation_db) ;
                            id_enseignement=value3.getId_enseignement();
                        }
                        for (Map.Entry<Integer, Enseignement> entry5 : c.tab_enseignement.entrySet()) {
                            Enseignement value5 = entry5.getValue();
                            if (value5.getId_enseignement() == id_enseignement) {
                                id_prof=value5.get_id();//récupérer Id du prof
                                id_discipline=value5.get_id_discipline();
                            }
                        }for (Map.Entry<Integer, Personne> entry6 : c.tab_personne.entrySet()) {
                            Personne value6 = entry6.getValue();
                            if (value6.getId_personne() == id_prof) {
                                nom_prof=value6.getNom_personne();
                                nom_proff.add(nom_prof);
                            }
                        }for (Map.Entry<Integer, Niveau> entry8 : c.tab_niveau.entrySet()) {
                            Niveau value8 = entry8.getValue();
                            if (value8.getId_niveau() == id_niveau) {
                                nom_niveau=value8.getNom_niveau();
                            }
                        }
                        for (Map.Entry<Integer, Discipline> entry7 : c.tab_discipline.entrySet()) {
                            Discipline value7 = entry7.getValue();
                            if (value7.getId_discipline() == id_discipline) {
                                matiere= value7.getNom_discipline();
                                nom_matiere.add(matiere);
                            }
                        }
                    }

                String nc=nom_niveau.concat(nom_classe);

                for (Map.Entry<Integer, Bulletin> entry : c.tab_bulletin.entrySet()) {
                    Bulletin value = entry.getValue();

                    if ((value.getId_insc() == id_e)&&value.getId()==id_bulletin_selec) {

                        double moyenne_g= c.calcul_moyenne_bulletin(id_e);
                        System.out.println("Moyenne générale :"+moyenne_g);
                        String nom = value.get_nom(c.tab_personne);
                        value.display(moyenne_g, nom);
                    }
                }
                bull_debt.setText(debut);
                bull_fint.setText(fin);
                bull_class.setText(nc);
                bull_nom.setText(nom_eleve);
                bull_prenom.setText(prenom_eleve);
                DefaultTableModel model = new DefaultTableModel();
                Object[] colonneNom = new Object[4];
                colonneNom[0] = "Matiere";
                colonneNom[1] = "Moyenne";
                colonneNom[2] = "Nom professeur";
                colonneNom[3] = "Appreciation matière";
                model.setColumnIdentifiers(colonneNom);
                Object[] ligne_data = new Object[4];
                for (int i = 0; i < app_db.size(); i++) {
                    ligne_data[0] = nom_matiere.get(i);
                    ligne_data[1] = moyenne.get(i);
                    ligne_data[2] = nom_proff.get(i);
                    ligne_data[3] = app_db.get(i);
                    model.addRow(ligne_data);
                }
                table_bull.setModel(model);

            }
        });
    }
    public static void main (String [] args){
        JFrame frame=new JFrame("Gestion d'une école");
        frame.setContentPane(new FenetreGraphique().home);
      //  frame.setPreferredSize(450,500);
       // home.setBackground(255,179,179);

       frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
    }

    private void createUIComponents() {
        // TODO: place custom component creation code here
    }
}
