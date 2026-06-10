import '../models/categorie.dart';
import '../models/question.dart';

class QuizData {

    static List<Categorie> allCategories() {
        return categories;
    }

    // =========================
    // 10 CATÉGORIES
    // =========================
    static const List<Categorie> categories = [
        Categorie(
        id: "1",
        nom: "Sciences",
        description: "Physique, Chimie, Biologie",
        ),
        Categorie(
        id: "2",
        nom: "Histoire",
        description: "Événements historiques et civilisations",
        ),
        Categorie(
        id: "3",
        nom: "Sport",
        description: "Football, Basketball, Jeux Olympiques",
        ),
        Categorie(
        id: "4",
        nom: "Technologie",
        description: "Informatique, IA, Programmation",
        ),
        Categorie(
        id: "5",
        nom: "Géographie",
        description: "Pays, capitales, continents",
        ),
        Categorie(
        id: "6",
        nom: "Culture Générale",
        description: "Questions variées du quotidien",
        ),
        Categorie(
        id: "7",
        nom: "Musique",
        description: "Chanteurs, instruments, styles musicaux",
        ),
        Categorie(
        id: "8",
        nom: "Cinéma",
        description: "Films, acteurs et réalisateurs",
        ),
        Categorie(
        id: "9",
        nom: "Littérature",
        description: "Livres, auteurs et œuvres célèbres",
        ),
        Categorie(
        id: "10",
        nom: "Sciences Sociales",
        description: "Société, économie, politique",
        ),
    ];

    // =========================
    // SCIENCES (5 questions)
    // =========================
    static List<Question> scienceQuestions = [
        Question(id: "s1", texte: "Quelle planète est appelée planète rouge ?", choix: ["Mars", "Vénus", "Jupiter", "Terre"], bonneReponse: "Mars", categorie: categories[0]),
        Question(id: "s2", texte: "Quelle est la formule de l'eau ?", choix: ["CO2", "H2O", "O2", "NaCl"], bonneReponse: "H2O", categorie: categories[0]),
        Question(id: "s3", texte: "Quel organe pompe le sang ?", choix: ["Cœur", "Foie", "Poumon", "Rein"], bonneReponse: "Cœur", categorie: categories[0]),
        Question(id: "s4", texte: "Quel gaz respirons-nous ?", choix: ["Oxygène", "Azote", "CO2", "Hélium"], bonneReponse: "Oxygène", categorie: categories[0]),
        Question(id: "s5", texte: "Quelle est l’unité de force ?", choix: ["Watt", "Newton", "Volt", "Joule"], bonneReponse: "Newton", categorie: categories[0]),
    ];

    // =========================
    // HISTOIRE (5 questions)
    // =========================
    static List<Question> historyQuestions = [
        Question(id: "h1", texte: "Qui a découvert l’Amérique ?", choix: ["Colomb", "Newton", "Einstein", "Galilée"], bonneReponse: "Colomb", categorie: categories[1]),
        Question(id: "h2", texte: "En quelle année finit la 2e guerre mondiale ?", choix: ["1945", "1939", "1918", "1960"], bonneReponse: "1945", categorie: categories[1]),
        Question(id: "h3", texte: "Quelle civilisation a construit les pyramides ?", choix: ["Grecs", "Égyptiens", "Romains", "Mayas"], bonneReponse: "Égyptiens", categorie: categories[1]),
        Question(id: "h4", texte: "Qui était Napoléon ?", choix: ["Empereur", "Scientifique", "Roi d’Angleterre", "Explorateur"], bonneReponse: "Empereur", categorie: categories[1]),
        Question(id: "h5", texte: "Quel mur est tombé en 1989 ?", choix: ["Mur de Chine", "Mur de Berlin", "Mur d’Hadrien", "Mur de Paris"], bonneReponse: "Mur de Berlin", categorie: categories[1]),
    ];

    // =========================
    // SPORT (5 questions)
    // =========================
    static List<Question> sportQuestions = [
        Question(id: "sp1", texte: "Combien de joueurs au football ?", choix: ["9", "10", "11", "12"], bonneReponse: "11", categorie: categories[2]),
        Question(id: "sp2", texte: "Quel sport utilise une raquette ?", choix: ["Tennis", "Foot", "Boxe", "Natation"], bonneReponse: "Tennis", categorie: categories[2]),
        Question(id: "sp3", texte: "Durée des JO ?", choix: ["2 ans", "3 ans", "4 ans", "5 ans"], bonneReponse: "4 ans", categorie: categories[2]),
        Question(id: "sp4", texte: "Combien vaut un panier au basket ?", choix: ["1", "2", "3", "4"], bonneReponse: "2", categorie: categories[2]),
        Question(id: "sp5", texte: "Quel sport utilise un volant ?", choix: ["Badminton", "Tennis", "Golf", "Foot"], bonneReponse: "Badminton", categorie: categories[2]),
    ];

    // =========================
    // TECHNOLOGIE (5 questions)
    // =========================
    static List<Question> techQuestions = [
        Question(id: "t1", texte: "Que signifie CPU ?", choix: ["Central Processing Unit", "Computer Personal Unit", "Core Program Utility", "Central Power Unit"], bonneReponse: "Central Processing Unit", categorie: categories[3]),
        Question(id: "t2", texte: "Langage Flutter ?", choix: ["Java", "Dart", "Kotlin", "Swift"], bonneReponse: "Dart", categorie: categories[3]),
        Question(id: "t3", texte: "Que signifie HTML ?", choix: ["HyperText Markup Language", "HighText Machine Language", "Home Tool Language", "Hyper Tool Markup"], bonneReponse: "HyperText Markup Language", categorie: categories[3]),
        Question(id: "t4", texte: "Système Google ?", choix: ["iOS", "Android", "Windows", "Linux"], bonneReponse: "Android", categorie: categories[3]),
        Question(id: "t5", texte: "IA signifie ?", choix: ["Internet Automatique", "Intelligence Artificielle", "Information Avancée", "Interface Active"], bonneReponse: "Intelligence Artificielle", categorie: categories[3]),
    ];

    // =========================
    // GÉOGRAPHIE (5 questions)
    // =========================
    static List<Question> geoQuestions = [
        Question(id: "g1", texte: "Capitale de la France ?", choix: ["Paris", "Lyon", "Marseille", "Nice"], bonneReponse: "Paris", categorie: categories[4]),
        Question(id: "g2", texte: "Plus grand océan ?", choix: ["Atlantique", "Indien", "Pacifique", "Arctique"], bonneReponse: "Pacifique", categorie: categories[4]),
        Question(id: "g3", texte: "Continent du Brésil ?", choix: ["Europe", "Asie", "Afrique", "Amérique"], bonneReponse: "Amérique", categorie: categories[4]),
        Question(id: "g4", texte: "Pays du Japon ?", choix: ["Asie", "Europe", "Afrique", "Amérique"], bonneReponse: "Asie", categorie: categories[4]),
        Question(id: "g5", texte: "Capitale du USA ?", choix: ["New York", "Washington", "Los Angeles", "Chicago"], bonneReponse: "Washington", categorie: categories[4]),
    ];

    // =========================
    // CULTURE GÉNÉRALE (5 questions)
    // =========================
    static List<Question> generalQuestions = [
        Question(id: "c1", texte: "Combien de jours dans une année ?", choix: ["365", "360", "400", "300"], bonneReponse: "365", categorie: categories[5]),
        Question(id: "c2", texte: "Couleur du ciel ?", choix: ["Rouge", "Bleu", "Vert", "Jaune"], bonneReponse: "Bleu", categorie: categories[5]),
        Question(id: "c3", texte: "Animal roi de la jungle ?", choix: ["Lion", "Tigre", "Éléphant", "Zèbre"], bonneReponse: "Lion", categorie: categories[5]),
        Question(id: "c4", texte: "Combien de continents ?", choix: ["5", "6", "7", "8"], bonneReponse: "7", categorie: categories[5]),
        Question(id: "c5", texte: "Langue internationale ?", choix: ["Français", "Anglais", "Espagnol", "Chinois"], bonneReponse: "Anglais", categorie: categories[5]),
    ];

    // =========================
    // MUSIQUE (5 questions)
    // =========================
    static List<Question> musicQuestions = [
        Question(id: "m1", texte: "Instrument à cordes ?", choix: ["Guitare", "Flûte", "Tambour", "Piano"], bonneReponse: "Guitare", categorie: categories[6]),
        Question(id: "m2", texte: "Chantant 'Shape of You' ?", choix: ["Ed Sheeran", "Drake", "Beyoncé", "Adele"], bonneReponse: "Ed Sheeran", categorie: categories[6]),
        Question(id: "m3", texte: "Combien de notes musicales ?", choix: ["5", "6", "7", "8"], bonneReponse: "7", categorie: categories[6]),
        Question(id: "m4", texte: "Style de musique de Beethoven ?", choix: ["Classique", "Rap", "Jazz", "Rock"], bonneReponse: "Classique", categorie: categories[6]),
        Question(id: "m5", texte: "Instrument avec touches ?", choix: ["Piano", "Guitare", "Violon", "Flûte"], bonneReponse: "Piano", categorie: categories[6]),
    ];

    // =========================
    // CINÉMA (5 questions)
    // =========================
    static List<Question> cinemaQuestions = [
        Question(id: "ci1", texte: "Film Titanic ?", choix: ["James Cameron", "Spielberg", "Nolan", "Lucas"], bonneReponse: "James Cameron", categorie: categories[7]),
        Question(id: "ci2", texte: "Batman est un ?", choix: ["Super-héros", "Policier", "Méchant", "Robot"], bonneReponse: "Super-héros", categorie: categories[7]),
        Question(id: "ci3", texte: "Hollywood est en ?", choix: ["France", "USA", "Canada", "UK"], bonneReponse: "USA", categorie: categories[7]),
        Question(id: "ci4", texte: "Harry Potter est ?", choix: ["Film", "Livre", "Les deux", "Série"], bonneReponse: "Les deux", categorie: categories[7]),
        Question(id: "ci5", texte: "Avengers est un film ?", choix: ["Marvel", "DC", "Pixar", "Netflix"], bonneReponse: "Marvel", categorie: categories[7]),
    ];

    // =========================
    // LITTÉRATURE (5 questions)
    // =========================
    static List<Question> literatureQuestions = [
        Question(id: "l1", texte: "Auteur de Les Misérables ?", choix: ["Victor Hugo", "Molière", "Zola", "Camus"], bonneReponse: "Victor Hugo", categorie: categories[8]),
        Question(id: "l2", texte: "Livre de Shakespeare ?", choix: ["Hamlet", "Harry Potter", "Le Petit Prince", "Don Quichotte"], bonneReponse: "Hamlet", categorie: categories[8]),
        Question(id: "l3", texte: "Le Petit Prince est de ?", choix: ["Saint-Exupéry", "Hugo", "Zola", "Balzac"], bonneReponse: "Saint-Exupéry", categorie: categories[8]),
        Question(id: "l4", texte: "Écrivain français ?", choix: ["Victor Hugo", "Shakespeare", "Tolstoï", "Dante"], bonneReponse: "Victor Hugo", categorie: categories[8]),
        Question(id: "l5", texte: "Genre de roman policier ?", choix: ["Thriller", "Poésie", "Drame", "Science"], bonneReponse: "Thriller", categorie: categories[8]),
    ];

    // =========================
    // SCIENCES SOCIALES (5 questions)
    // =========================
    static List<Question> socialQuestions = [
        Question(id: "ss1", texte: "Qu’est-ce que l’économie ?", choix: ["Étude de l’argent", "Sport", "Langue", "Science naturelle"], bonneReponse: "Étude de l’argent", categorie: categories[9]),
        Question(id: "ss2", texte: "Le gouvernement est ?", choix: ["Organisation politique", "Entreprise", "École", "Sport"], bonneReponse: "Organisation politique", categorie: categories[9]),
        Question(id: "ss3", texte: "La société est ?", choix: ["Groupe de personnes", "Animal", "Pays", "Machine"], bonneReponse: "Groupe de personnes", categorie: categories[9]),
        Question(id: "ss4", texte: "La démocratie est ?", choix: ["Pouvoir du peuple", "Roi", "Dictature", "Entreprise"], bonneReponse: "Pouvoir du peuple", categorie: categories[9]),
        Question(id: "ss5", texte: "Une loi est ?", choix: ["Règle officielle", "Opinion", "Livre", "Sport"], bonneReponse: "Règle officielle", categorie: categories[9]),
    ];

    // =========================
    // GET QUESTIONS
    // =========================
    static List<Question> getQuestionsByCategory(String categoryId) {
        switch (categoryId) {
        case "1":
            return scienceQuestions;
        case "2":
            return historyQuestions;
        case "3":
            return sportQuestions;
        case "4":
            return techQuestions;
        case "5":
            return geoQuestions;
        case "6":
            return generalQuestions;
        case "7":
            return musicQuestions;
        case "8":
            return cinemaQuestions;
        case "9":
            return literatureQuestions;
        case "10":
            return socialQuestions;
        default:
            return [];
        }
    }
}
