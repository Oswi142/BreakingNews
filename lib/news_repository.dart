import 'news.dart';

class NewsRepository {
  Future<List<News>> getNews() async {
    List<News> newsList = [
      News(
        title: 'Título de la noticia local 1',
        description: 'Descripción de la noticia local 1',
        urlToImage: 'https://ejemplo.com/imagen1.jpg',
        type: NewsType.local,
      ),
      News(
        title: 'Título de la noticia internacional 1',
        description: 'Descripción de la noticia internacional 1',
        urlToImage: 'https://ejemplo.com/imagen2.jpg',
        type: NewsType.international,
      ),
      News(
        title: 'Título del chisme 1',
        description: 'Descripción del chisme 1',
        urlToImage: 'https://ejemplo.com/imagen3.jpg',
        type: NewsType.gossip,
      ),
    ];

    await Future.delayed(const Duration(seconds: 2));

    return newsList;
  }
}