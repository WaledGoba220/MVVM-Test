import 'package:mvvm_test/models/post_model.dart';
import 'package:mvvm_test/services/repo.dart';

class PostsLocal extends PostsRepository {
  @override
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
