import '../models/partie.dart';

class HistoryService {
    static final List<Partie> _historique = [];

    /// Ajouter une partie
    static void ajouterPartie(Partie partie) {
        _historique.add(partie);
    }

    /// Récupérer tout l’historique
    static List<Partie> getHistorique() {
        return _historique;
    }

    /// Supprimer historique
    static void viderHistorique() {
        _historique.clear();
    }

    /// Top score
    static Partie? getMeilleurePartie() {
        if (_historique.isEmpty) return null;

        _historique.sort((a, b) => b.score.compareTo(a.score));
        return _historique.first;
    }
}
