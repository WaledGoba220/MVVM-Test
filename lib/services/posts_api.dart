import 'package:dio/dio.dart';
import 'package:mvvm_test/models/post_model.dart';
import 'package:mvvm_test/services/repo.dart';

class PostsAPI extends PostsRepository {
  @override
  Future<List<PostModel>> getAllPosts() async {
    List<PostModel> posts = [];
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts');
      var list = response.data as List;
      posts = list.map((post) => PostModel.fromJson(post)).toList();
    } catch (exception) {
      print(exception);
    }
    print(posts);
    return posts;
  }

  @override
  Future<PostModel> getPostById(int id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }
}
