import 'package:mvvm_test/models/post_model.dart';
import 'package:mvvm_test/services/repo.dart';

import 'one_post_view_model.dart';

class PostsViewModel {
  final String title = "All Posts";
  PostsRepository? postsRepository;
  PostsViewModel({this.postsRepository});

  Future<List<PostViewModel>> fetchAllPosts() async {
    List<PostModel> list = await postsRepository!.getAllPosts();
    return list.map((post) => PostViewModel(postModel: post)).toList();
  }
}
