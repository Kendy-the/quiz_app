import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quiz_app/models/partie.dart';
import 'package:quiz_app/screens/result_screen.dart';
import 'package:quiz_app/services/history_service.dart';
import 'package:quiz_app/services/score_service.dart';
import '../models/question.dart';
import '../models/categorie.dart';

class QuizScreen extends StatefulWidget {

    final Categorie categorie;
    final List<Question> questions;

    const QuizScreen({
        super.key,
        required this.categorie,
        required this.questions,
    });

    @override
    State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

    int currentIndex = 0;
    int timeLeft = 15;
    Timer? timer;
    int score = 0;
    int bonnesReponses = 0;

    @override
    void initState() {
        super.initState();
        startTimer();
    }

    void startTimer() {
        timer = Timer.periodic(const Duration(seconds: 1), (timer) {
            if (timeLeft == 0) {
                nextQuestion();
            } else {
                setState(() {
                timeLeft--;
                });
            }
        });
    }

    void checkAnswer(String answer) {
        final question = widget.questions[currentIndex];

        if (question.estBonneReponse(answer)) {
            bonnesReponses++;
        }

        nextQuestion();
    }

    void nextQuestion() {
        timer?.cancel();

        if (currentIndex < widget.questions.length - 1) {
            setState(() {
                currentIndex++;
                timeLeft = 15;
            });
            startTimer();
        } else {
            finishQuiz();
        }
    }

    void finishQuiz() {
        timer?.cancel();

        score = ScoreService.calculerScore(
            bonnesReponses,
            10, // 10 points par bonne réponse
        );

        final partie = Partie(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            questions: widget.questions,
            score: score,
            bonnesReponses: score ~/ 10,
            date: DateTime.now(),
            dureeTotale: widget.questions.length * 15 - timeLeft,
        );

        // Enregistrer la partie
        HistoryService.ajouterPartie(partie);

        // Aller vers l'écran des résultats
        Navigator.pushReplacement(
        context,
            MaterialPageRoute(
                builder: (_) => ResultScreen(
                score: score,
                totalQuestions: widget.questions.length,
                bonnesReponses: score ~/ 10,
                tempsTotal: partie.dureeTotale,
                ),
            ),
        );
    }

    @override
    void dispose() {
        timer?.cancel();
        super.dispose();
    }

    @override
    Widget build(BuildContext context) {
        final question = widget.questions[currentIndex];

        return Scaffold(
            appBar: AppBar(
                title: Text(widget.categorie.nom),
                centerTitle: true,
            ),
            body: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                        // Score + Timer
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                // Text("Score: $score"),
                                Text("Temps: $timeLeft"),
                            ],
                        ),

                        const SizedBox(height: 20),

                        // Progress
                        Text(
                            "Question ${currentIndex + 1}/${widget.questions.length}",
                            style: const TextStyle(fontSize: 16),
                        ),

                        const SizedBox(height: 20),

                        // Question
                        Text(
                            question.texte,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                            ),
                        ),

                        const SizedBox(height: 30),

                        // Answers
                        ...question.choix.map((answer) {
                            return Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                child: ElevatedButton(
                                onPressed: () => checkAnswer(answer),
                                child: Text(answer),
                                ),
                            );
                        }),
                    ],
                ),
            ),
        );
    }
}
