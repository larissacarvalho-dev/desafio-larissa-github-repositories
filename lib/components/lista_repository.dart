
//componentes projeto
import 'package:avaliacao_larissa/models/repository.dart';

//componentes flutter
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:url_launcher/url_launcher.dart';

class ListRepository extends StatelessWidget{
  const ListRepository({Key key, this.repositories})
      : super(key: key);
  final List<Repository> repositories;

  @override
  Widget build(BuildContext context) {
   return Observer(builder: (_) => ListView.builder(
       itemCount: repositories.length,
        itemBuilder: (context,index){
          return Card(
            color: Colors.white,
            child: Column(
            children: <Widget> [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(repositories[index].name),
                  subtitle: Text(repositories[index].user_repository),
                  leading: CachedNetworkImage(
                    imageBuilder: (context, imageProvider) => Container(
                      height: 80.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: imageProvider
                        )
                      ),
                    ),
                    imageUrl: repositories[index].avatar_url,
                    progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(
                      value: downloadProgress.progress,
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    onPressed: ()async{
                      var url = repositories[index].url;
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Abrindo repositório $url'), duration: Duration(seconds: 4)));
                      if (await canLaunch(url)) {
                      await launch(url);
                      } else {
                      Scaffold.of(context).showSnackBar(
                      SnackBar(content: Text('Url inválida $url')));
                      }
                    },
                    child: Icon(Icons.open_in_browser, color: Colors.black),
                  ),
                ],
              ),
            ],
            ),
            elevation: 5.0,
          );
        },
     )
   );
  }

}