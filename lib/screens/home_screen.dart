import 'package:flutter/material.dart';
import 'package:quiz_app/screens/history_screen.dart';
import 'category_screen.dart';

class HomeScreen extends StatelessWidget {
const HomeScreen({super.key});

@override
Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Quiz"),
            centerTitle: true,
        ),
        
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                    const Text(
                        "Quiz",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                        ),
                    ),

                    const SizedBox(height: 40),

                    ElevatedButton(
                        onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) => const CategoryScreen(),
                                ),
                            );
                        },
                        child: const Text("Commencer"),
                    ),

                    const SizedBox(height: 15),

                    ElevatedButton(
                        onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const CategoryScreen(),
                                ),
                            );
                        },
                        child: const Text("Categories"),
                    ),

                    const SizedBox(height: 15),

                    ElevatedButton(
                        onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HistoryScreen(),
                                ),
                            );
                        },
                        child: const Text("Historique"),
                    ),
                ],
            ),
        ),
    );
}
}
