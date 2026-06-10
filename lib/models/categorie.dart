class Categorie {
    final String id;
    final String nom;
    final String description;

    const Categorie({
        required this.id,
        required this.nom,
        required this.description,
    });

    @override
    String toString() {
        return nom;
    }

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;

        return other is Categorie && other.id == id;
    }

    @override
    int get hashCode => id.hashCode;
}
