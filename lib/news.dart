class News {
  final String title;
  final String description;
  final String urlToImage;
  final NewsType type; // Nuevo atributo para el tipo de noticia

  News({
    required this.title,
    required this.description,
    required this.urlToImage,
    required this.type, // Requerido en el constructor
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      urlToImage: json['urlToImage'] ?? '',
      type: json['type'] == 'local'
          ? NewsType.local
          : json['type'] == 'international'
              ? NewsType.international
              : NewsType.gossip, // Determinar el tipo de noticia desde el JSON
    );
  }
}

enum NewsType { local, international, gossip }