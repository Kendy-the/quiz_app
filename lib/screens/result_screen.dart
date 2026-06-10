import 'package:flutter/material.dart';
import 'package:quiz_app/services/score_service.dart';

class ResultScreen extends StatelessWidget {
    final int score;
    final int totalQuestions;
    final int bonnesReponses;
    final int tempsTotal;

    const ResultScreen({
        super.key,
        required this.score,
        required this.totalQuestions,
        required this.bonnesReponses,
        required this.tempsTotal,
    });

    @override
    Widget build(BuildContext context) {

        final pourcentage = ScoreService.calculerPourcentage(
            bonnesReponses,
            totalQuestions,
        );

        return Scaffold(
            appBar: AppBar(
                title: const Text("Résultats"),
                centerTitle: true,
                automaticallyImplyLeading: false,
            ),
            body: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        const Text(
                            "Quiz Terminé",
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                            ),
                        ),

                        const SizedBox(height: 30),

                        _buildResultCard("Score", "$score pts"),
                        _buildResultCard("Bonnes réponses", "$bonnesReponses / $totalQuestions"),
                        _buildResultCard("Pourcentage", "${pourcentage.toStringAsFixed(1)}%"),
                        _buildResultCard("Temps total", "$tempsTotal sec"),

                        const SizedBox(height: 40),

                        ElevatedButton(
                            onPressed: () {
                                Navigator.popUntil(context, (route) => route.isFirst);
                            },
                            child: const Text("Retour à l'accueil"),
                        ),
                    ],
                ),
            ),
        );
    }

    Widget _buildResultCard(String title, String value) {
        return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                title: Text(title),
                trailing: Text(
                    value,
                    style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    ),
                ),
            ),
        );
    }
}
