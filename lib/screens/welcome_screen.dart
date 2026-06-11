

import 'package:flutter/material.dart';
import 'package:quiz_app/screens/home_screen.dart';
import 'package:quiz_app/services/joueur_service.dart';

class WelcomeScreen extends StatefulWidget {
  
  const WelcomeScreen({
    super.key,
    });

    


    @override
    State<WelcomeScreen> createState() {
        return _WelcomeSreenState();
    }

}

class _WelcomeSreenState extends State<WelcomeScreen> {

    final TextEditingController _nomController = TextEditingController();

    void _commencer() {
        final nom = _nomController.text.trim();

        if (nom.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Text("Veuillez entrer votre nom."),
            ),
            );
            return;
        }

        // Sauvegarder le nom
        JoueurService.nomJoueur = nom;

        // Aller vers HomeScreen
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
            builder: (_) => const HomeScreen(),
            ),
        );
    }
    
    @override
    Widget build(BuildContext context) {

        return Scaffold(

            appBar: AppBar(
                title: Text("Quiz"),
                centerTitle: true,
            ),

            body: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                    TextField(
                        controller: _nomController,
                        decoration: const InputDecoration(
                        labelText: "Nom du joueur",
                        hintText: "Entrez votre nom",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                        ),
                    ),

                    const SizedBox(height: 20),

                    ElevatedButton(
                        onPressed: _commencer,
                        child: const Text("Commencer"),
                    ),
                    ],
                ),
                ),
        );

    }

}
