class ScoreService {
    /// Calcule le score final
    static int calculerScore(int bonnesReponses, int pointsParBonneReponse) {
        return bonnesReponses * pointsParBonneReponse;
    }

    /// Calcule le pourcentage de réussite
    static double calculerPourcentage(int bonnesReponses, int totalQuestions) {
        if (totalQuestions == 0) return 0;
        return (bonnesReponses / totalQuestions) * 100;
    }

    /// Détermine un niveau selon le score
    static String obtenirNiveau(int score) {
        if (score >= 80) return "Excellent";
        if (score >= 50) return "Bon";
        return "À améliorer";
    }
}
