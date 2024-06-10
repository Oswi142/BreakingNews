import 'package:flutter_bloc/flutter_bloc.dart';

import 'news_event.dart';
import 'news_state.dart';
import 'news_repository.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsRepository _newsRepository;

  NewsBloc(this._newsRepository) : super(NewsInitialState()) {
    on<LoadNewsEvent>(_onLoadNews);
  }

  Future<void> _onLoadNews(LoadNewsEvent event, Emitter<NewsState> emit) async {
    emit(NewsLoadingState());

    try {
      final news = await _newsRepository.getNews();
      emit(NewsLoadedState(news));
    } catch (e) {
      emit(NewsErrorState(e.toString()));
    }
  }
}