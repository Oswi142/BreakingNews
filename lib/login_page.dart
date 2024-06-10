import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'news_bloc.dart';
import 'news_event.dart';
import 'news_state.dart';
import 'news.dart';
import 'user_page.dart';

class NewsPage extends StatefulWidget {
  final NewsType newsType;
  const NewsPage({Key? key, required this.newsType}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _getTitle(widget.newsType),
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueGrey,
      ),
      body: BlocBuilder<NewsBloc, NewsState>(
        builder: (context, state) {
          if (state is NewsInitialState) {
            context.read<NewsBloc>().add(LoadNewsEvent());
          }
          if (state is NewsLoadedState) {
            final filteredNews = state.news
                .where((news) => news.type == widget.newsType)
                .toList();
            return ListView.separated(
              itemCount: filteredNews.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                final news = filteredNews[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewsDetailsPage(news: news),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            news.title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      news.urlToImage.isNotEmpty
                          ? Center(
                              child: Image.network(
                                news.urlToImage,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            )
                          : const SizedBox.shrink(),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            news.description,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.teal.withOpacity(0.5),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          _navigateToPage(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Locales',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.public),
            label: 'Internacionales',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            label: 'Chismes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Usuario',
          ),
        ],
      ),
    );
  }

  String _getTitle(NewsType newsType) {
    switch (newsType) {
      case NewsType.local:
        return 'Noticias Locales';
      case NewsType.international:
        return 'Noticias Internacionales';
      case NewsType.gossip:
        return 'Chismes';
    }
  }

  void _navigateToPage(int index) {
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const NewsPage(newsType: NewsType.local),
          ),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const NewsPage(newsType: NewsType.international),
          ),
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const NewsPage(newsType: NewsType.gossip),
          ),
        );
        break;
      case 3:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const UserPage()),
        );
        break;
    }
  }
}

class NewsDetailsPage extends StatelessWidget {
  final News news;

  const NewsDetailsPage({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(news.title),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              news.urlToImage.isNotEmpty
                  ? Image.network(
                      news.urlToImage,
                      fit: BoxFit.cover,
                    )
                  : const SizedBox.shrink(),
              const SizedBox(height: 16.0),
              Text(
                news.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                news.description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}