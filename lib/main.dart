import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'news_bloc.dart';
import 'news_repository.dart';
import 'news_page.dart';
import 'news.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => NewsBloc(NewsRepository()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      home: const NewsPage(newsType: NewsType.local),
    );
  }
}