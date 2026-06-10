import 'question.dart';

class Partie {
    final String id;
    final List<Question> questions;
    final int score;
    final int bonnesReponses;
    final DateTime date;
    final int dureeTotale; // en secondes

    const Partie({
        required this.id,
        required this.questions,
        required this.score,
        required this.bonnesReponses,
        required this.date,
        required this.dureeTotale,
    });

    /// Pourcentage de réussite
    double get pourcentageReussite {
        if (questions.isEmpty) return 0;
        return (bonnesReponses / questions.length) * 100;
    }

    @override
    String toString() {
        return 'Score: $score';
    }

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;

        return other is Partie && other.id == id;
    }

    @override
    int get hashCode => id.hashCode;
}
