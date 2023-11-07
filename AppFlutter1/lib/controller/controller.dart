import 'package:appflutter1/model/postsModel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class apicontroller extends GetxController{

  String url = 'https://jsonplaceholder.typicode.com/posts';
  Future<List<Posts>> fetchposts ()async{
    final uri = Uri.parse(url);
    var response = await http.get(uri);
    if(response.statusCode == 200){
      return postsFromJson(response.body);

    }
    return null!;

  }
}

