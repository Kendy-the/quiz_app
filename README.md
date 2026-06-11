# 🎯 Quiz Mobile App - Flutter

Application mobile de quiz interactif développée avec Flutter permettant aux utilisateurs de tester leurs connaissances dans plusieurs catégories (Sciences, Histoire, Sport, Technologie, etc.).

---

## 📱 Fonctionnalités principales

- 👤 Saisie du nom du joueur au lancement
- 🗂️ Choix de catégories de quiz
- ❓ Quiz interactif avec minuterie par question
- ⏱️ Système de score en temps réel
- 🏆 Affichage du score final
- 📜 Historique des parties jouées
- 🔄 Navigation fluide entre écrans

---

## 🏗️ Architecture du projet

Le projet suit une architecture simple basée sur :

```text
lib/
│
├── models/ # Classes métier (Question, Categorie, Partie)
├── screens/ # Interfaces utilisateur (UI)
├── services/ # Logique métier (score, historique, stockage)
├── data/ # Données locales du quiz (questions)
└── main.dart # Point d'entrée de l'application
```
---

## 🧠 Logique métier

L’application repose sur les entités suivantes :

- **Joueur** : utilisateur de l’application
- **Catégorie** : thème du quiz (Sciences, Sport, etc.)
- **Question** : question avec plusieurs choix
- **Réponse** : choix possible avec validation
- **Partie** : session de jeu avec score et durée
- **QuizData** : base de données locale des questions

👉 Une partie se déroule comme suit :

```text
    Joueur Entre son nom 
        → Choisit une catégorie 
            → Lance une partie 
                → Répond aux questions 
                    → Score calculé 
                        → Résultat affiché
```
---

## 🚀 Installation et lancement

### 1. Cloner le projet

```bash
git clone https://github.com/kendy-the/quiz_app.git
cd quiz_app

```
### 2. Installer les dependances
```bash
flutter pub get
```

### 3. lancer l'app
```bash
flutter run
```

### 4. generer un apk
```bash
flutter build apk --release
```

le fichier se trouvera dans :
```text
build/app/outputs/flutter-apk/app-release.apk
```
