import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutterapp/ui/views/address_selection/address_selection_view.dart';
import 'package:flutterapp/ui/views/home/home_view.dart';
import 'package:flutterapp/ui/views/startup/startup_view.dart';
import 'package:flutterapp/ui/views/welcome_view/welcome_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: AddressSelectionView),
    MaterialRoute(page: WelcomeView)
  ],
)
class $Router {}