import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:mobx/mobx.dart';

//componente mobX
part 'repository.g.dart';

class Repository extends _Repository with _$Repository{

  Repository(
      {int id,
        String name,
        String user_repository,
        String avatar_url,
        String url,})
      : super(
      id: id,
      name: name,
      user_repository: user_repository,
      avatar_url: avatar_url,
      url: url,);

  factory Repository.fromJson(Map<String, dynamic> json) {
    return new Repository(
        id: json['id'],
        name: json['name'],
        user_repository: json['full_name'],
        avatar_url: json['owner']['avatar_url'],
        url: json['html_url'],
    );
  }
}


abstract class _Repository with Store {
  @observable
   int id=0;

  @observable
   String name="";

  @observable
   String user_repository="";

  @observable
   String avatar_url="";

  @observable
  String url= "";

  _Repository({this.id, this.name, this.user_repository, this.avatar_url, this.url});
}

class RepositoryApi{
 var repositoriesapi = List<Repository>();
  @action
  Future<void> searchRepositories() async{
    try{
      var response = await http.get(
          "https://api.github.com/search/repositories?q=all&page=0&per_page=100");
      var data = jsonDecode(response.body);
      var items = data['items'] as List;
      repositoriesapi = items.map((e) => Repository.fromJson(e)).toList();


    }catch(e){
      print(e);
    }

  }
}