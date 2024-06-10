import 'news.dart';

abstract class NewsState {}

class NewsInitialState extends NewsState {}

class NewsLoadingState extends NewsState {}

class NewsLoadedState extends NewsState {
  final List<News> news;

  NewsLoadedState(this.news);
}

class NewsErrorState extends NewsState {
  final String errorMessage;

  NewsErrorState(this.errorMessage);
}