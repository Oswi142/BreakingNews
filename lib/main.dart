import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'news_bloc.dart';
import 'news_repository.dart';
import 'login_page.dart'; // Importa la página de login

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<NewsBloc>(
          create: (_) => NewsBloc(NewsRepository()),
        ),
        // Puedes agregar más BlocProviders aquí si los necesitas en tu app
      ],
      child: MaterialApp(
        title: 'Breaking News',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginPage(), // Redirige a la página de login al iniciar la app
      ),
    ),
  );
}
