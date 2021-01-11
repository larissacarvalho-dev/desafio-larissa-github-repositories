//componentes do projeto
import 'package:avaliacao_larissa/modules/home/home_screen.dart';
import 'package:avaliacao_larissa/widgets/splashscreen.dart';

//componentes do flutter
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MainSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_){
        return SplashScreen(
          seconds: 4,
          navigateAfterSeconds: HomeScreen(),
          //animaçao realizada com rive.app
          image: FlareActor("assets/logogit.flr", animation: 'blur'),
          backgroundColor: Colors.white,
          styleTextUnderTheLoader: TextStyle(),
          photoSize: 100.0,
          loaderColor: Colors.black,
          loadingText: Text(
            "Buscando repositórios...",
            style: TextStyle(color: Colors.black38),
          ),
        );
      },
    );
  }
}