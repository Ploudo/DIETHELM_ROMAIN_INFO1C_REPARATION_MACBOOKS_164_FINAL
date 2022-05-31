"""
    Fichier : gestion_genres_wtf_forms.py
    Auteur : OM 2021.03.22
    Gestion des formulaires avec WTF
"""
from flask_wtf import FlaskForm
from wtforms import StringField, DateField
from wtforms import SubmitField
from wtforms.validators import Length, InputRequired, DataRequired
from wtforms.validators import Regexp


class FormWTFAjouterGenres(FlaskForm):
    """
        Dans le formulaire "genres_ajouter_wtf.html" on impose que le champ soit rempli.
        Définition d'un "bouton" submit avec un libellé personnalisé.
    """
    id_ecran_regexp = "^.{0,50}$"
    id_ecran_wtf = StringField("Saisir id écran", validators=[Length(max=50, message="max 50"),
                                                                   Regexp(id_ecran_regexp,
                                                                          message="Pas de caractères, caractères "
                                                                                  "spéciaux, "
                                                                                  "d'espace à double, de double "
                                                                                  "apostrophe, de double trait union")
                                                                   ])
    designation_ecran_regexp = "^.{1,50}$"
    designation_ecran_wtf = StringField("Saisir désignation écran", validators=[Length(min=2, max=50, message="min 2 max 50"),
                                                                  Regexp(designation_ecran_regexp,
                                                                         message="Pas de chiffres, de caractères "
                                                                                 "spéciaux, "
                                                                                 "d'espace à double, de double "
                                                                                 "apostrophe, de double trait union")
                                                                  ])

    prix_achat_ecran_regexp = "^.{1,50}$"
    prix_achat_ecran_wtf = StringField("Saisir le prix d'achat", validators=[Length(min=2, max=50, message="min 2 max 50"),
                                                                   Regexp(prix_achat_ecran_regexp,
                                                                          message="Pas de chiffres, de caractères "
                                                                                  "spéciaux, "
                                                                                  "d'espace à double, de double "
                                                                                  "apostrophe, de double trait union")
                                                                   ])
    submit = SubmitField("Enregistrer")


class FormWTFUpdateGenre(FlaskForm):
    """
        Dans le formulaire "genre_update_wtf.html" on impose que le champ soit rempli.
        Définition d'un "bouton" submit avec un libellé personnalisé.
    """
    designation_ecran_update_regexp = "^.{1,50}$"
    designation_ecran_update_wtf = StringField("Saisir désignation écran ", validators=[Length(min=1, max=50, message="min 1 max 50"),
                                                                          Regexp(designation_ecran_update_regexp,
                                                                                 message="Pas de chiffres, de "
                                                                                         "caractères "
                                                                                         "spéciaux, "
                                                                                         "d'espace à double, de double "
                                                                                         "apostrophe, de double trait "
                                                                                         "union")
                                                                          ])
    prix_achat_ecran_update_regexp = "^.{1,50}$"
    prix_achat_ecran_update_wtf = StringField("Saisir désignation écran ", validators=[Length(min=1, max=50, message="min 1 max 50"),
                                                                          Regexp(prix_achat_ecran_update_regexp,
                                                                                 message="Pas de chiffres, de "
                                                                                         "caractères "
                                                                                         "spéciaux, "
                                                                                         "d'espace à double, de double "
                                                                                         "apostrophe, de double trait "
                                                                                         "union")
                                                                          ])

    submit = SubmitField("Update genre")


class FormWTFDeleteGenre(FlaskForm):
    """
        Dans le formulaire "genre_delete_wtf.html"

        nom_genre_delete_wtf : Champ qui reçoit la valeur du genre, lecture seule. (readonly=true)
        submit_btn_del : Bouton d'effacement "DEFINITIF".
        submit_btn_conf_del : Bouton de confirmation pour effacer un "genre".
        submit_btn_annuler : Bouton qui permet d'afficher la table "t_ecran".
    """
    nom_genre_delete_wtf = StringField("Effacer ce genre")
    submit_btn_del = SubmitField("Effacer genre")
    submit_btn_conf_del = SubmitField("Etes-vous sur d'effacer ?")
    submit_btn_annuler = SubmitField("Annuler")
