import 'package:flutterapp/app/locator.dart';
import 'package:flutterapp/services/posts_service.dart';
import 'package:stacked/stacked.dart';

class PostsCountViewModel extends BaseViewModel {
  int get postsCount => locator<PostsService>().posts.length;
}
