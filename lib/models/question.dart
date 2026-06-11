import 'categorie.dart';

class Question {
    final String id;
    final String texte;
    final List<String> choix;
    final String bonneReponse;
    final Categorie categorie;
    final int tempsLimite; // en secondes (optionnel mais utile)

    const Question({
        required this.id,
        required this.texte,
        required this.choix,
        required this.bonneReponse,
        required this.categorie,
        this.tempsLimite = 30,
    });

    /// Vérifie si une réponse est correcte
    bool estBonneReponse(String reponseUtilisateur) {
        return reponseUtilisateur == bonneReponse;
    }

    @override
    String toString() {
        return texte;
    }

    @override
    bool operator ==(Object other) {
    if (identical(this, other)) return true;

        return other is Question && other.id == id;
    }

    @override
    int get hashCode => id.hashCode;
}
