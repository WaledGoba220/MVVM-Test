import 'package:mvvm_test/models/post_model.dart';
import 'package:mvvm_test/services/repo.dart';

class PostsFake extends PostsRepository {
  Future<List<PostModel>> getAllPosts() {
    // TODO: implement getAllPosts
    throw UnimplementedError();
  }

  @override
  Future<PostModel> getPostById(int id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }
}
