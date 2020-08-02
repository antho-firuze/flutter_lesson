import 'package:flutterapp/app/locator.dart';
import 'package:flutterapp/datamodels/post.dart';
import 'package:flutterapp/services/posts_service.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';

@singleton
class PostsViewModel extends FutureViewModel<List<Post>> {
  final _postsService = locator<PostsService>();

  @override
  Future<List<Post>> futureToRun() {
    print('Fetch posts');
    return _postsService.getPostsForUser(3);
  }
}
