
//componentes projeto
import 'package:avaliacao_larissa/components/lista_repository.dart';
import 'package:avaliacao_larissa/models/repository.dart';
import 'package:avaliacao_larissa/modules/mainsplash/splash_screen.dart';

//componentes flutter
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatelessWidget {
   final repositoryApi = GetIt.I.get<RepositoryApi>();

  @override
  Widget build(BuildContext context) {
    //inicializando contato com api para não sobrecarregar a aplicação
    repositoryApi.searchRepositories();
    return Observer(builder: (_) =>
       Scaffold(
        appBar: AppBar(
          title: Text("GitHub"),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/cat1.png")
            ),
          ),
          alignment: Alignment.center,
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListRepository(
                  //salvando valores obtidos na api, que esta alocada na variavel repositoriesapi
                  repositories: repositoryApi.repositoriesapi
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
            isExtended: true,
            backgroundColor: Colors.black,
            label: Text("",style:TextStyle(color: Colors.white),),
            icon: Container(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Observer(
                    builder: (_) {
                      return Icon(
                        FontAwesomeIcons.list,
                        color: Colors.white,
                      );
                    },
                  )
                ],
              ),

            ),
            onPressed: () {
              //startando mainsplash loading e listando valores no listrepository
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MainSplashScreen()));
            }),
      )
    );
  }


}
