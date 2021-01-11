
//meus pacotes
import 'package:avaliacao_larissa/models/repository.dart';
import 'package:avaliacao_larissa/modules/home/home_screen.dart';

// pacotes da aplicação
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton<Repository>(Repository());
  getIt.registerSingleton<RepositoryApi>(RepositoryApi());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Home',
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
        theme: ThemeData(
          fontFamily: 'Montserrat',
          primaryColor: Colors.black,
          accentColor: Colors.white,
        ));
  }
}
