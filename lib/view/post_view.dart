import 'package:flutter/material.dart';
import 'package:mvvm_test/services/posts_api.dart';
import 'package:mvvm_test/view_model/one_post_view_model.dart';
import 'package:mvvm_test/view_model/post_view_model.dart';

// ignore: must_be_immutable
class PostView extends StatelessWidget {
  PostView({Key? key}) : super(key: key);
  //Dependency Injection
  var postsViewModel = PostsViewModel(postsRepository: PostsAPI());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(postsViewModel.title),
      ),
      body: Center(
        child: FutureBuilder<List<PostViewModel>>(
          future: postsViewModel.fetchAllPosts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              var posts = snapshot.data;
              return ListView.builder(
                itemCount: posts?.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(posts![index].title),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
