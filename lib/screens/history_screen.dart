import 'package:flutter/material.dart';
import 'package:quiz_app/services/history_service.dart';
import 'package:quiz_app/services/joueur_service.dart';
import '../models/partie.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Partie> parties = HistoryService.getHistorique();

    return Scaffold(
        appBar: AppBar(
            title: const Text("Historique"),
            centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.all(16),
            child: parties.isEmpty
                ? const Center(
                    child: Text(
                    "Pas d'historique",
                    style: TextStyle(fontSize: 18),
                    ),
                )
                : ListView.builder(
                    itemCount: parties.length,
                    itemBuilder: (context, index) {
                    final partie = parties[index];

                    return Card(
                        child: ListTile(
                            leading: CircleAvatar(
                                child: Text("${index + 1}"),
                            ),

                            title: Text("Score: ${partie.score} pts"),
                            subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Text("Joueur : ${JoueurService.nomJoueur}"),
                                Text(
                                    "Date: ${partie.date.day}/${partie.date.month}/${partie.date.year}",
                                ),
                                Text("Correct: ${partie.bonnesReponses}"),
                                ],
                            ),
                            
                            trailing: Text(
                                "${partie.dureeTotale}s",
                                style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                ),
                            ),
                        ),
                    );
                    },
                ),
        ),
    );
  }
}
