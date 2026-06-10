import 'package:flutter/material.dart';
import 'package:quiz_app/data/quiz_data.dart';
import 'package:quiz_app/screens/quiz_screen.dart';
import '../models/categorie.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Categorie> categories = QuizData.allCategories();

    return Scaffold(

        appBar: AppBar(
            title: const Text("Choisir la Categorie"),
            centerTitle: true,
        ),

        body: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context, index) {

                final category = categories[index];

                return Card(
                    child: ListTile(
                        title: Text(category.nom),
                        subtitle: Text(category.description),
                        trailing: const Icon(Icons.arrow_forward_ios),

                        onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => QuizScreen(
                                        categorie: category,
                                        questions: QuizData.getQuestionsByCategory(category.id),
                                    ),
                                ),
                            );
                        },
                    ),
                );
            },
            ),
        ),
    );
  }
}
