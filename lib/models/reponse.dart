class Reponse {
    final String texte;
    final bool estCorrecte;

    const Reponse({
        required this.texte,
        required this.estCorrecte,
    });

    @override
    String toString() => texte;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;

        return other is Reponse && other.texte == texte;
    }

    @override
    int get hashCode => texte.hashCode;
}
