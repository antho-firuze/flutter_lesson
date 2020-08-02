// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/get_it_helper.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/api.dart';
import '../services/counter_service.dart';
import '../services/media_service.dart';
import '../services/permissions_service.dart';
import '../services/posts_service.dart';
import '../services/shared_preferences_service.dart';
import '../services/third_party_services_module.dart';
import '../system/app_database.dart';
import '../ui/views/posts/posts_viewmodel.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

void $initGetIt(GetIt g, {String environment}) {
  final gh = GetItHelper(g, environment);
  final thirdPartyServicesModule = _$ThirdPartyServicesModule();
  gh.lazySingleton<Api>(() => Api());
  gh.lazySingleton<AppDatabase>(() => AppDatabase());
  gh.lazySingleton<CounterService>(() => CounterService());
  gh.lazySingleton<MediaService>(() => MediaService());
  gh.lazySingleton<PermissionsService>(() => PermissionsService());
  gh.lazySingleton<PostsService>(() => PostsService());
  gh.lazySingleton<SharedPreferencesService>(() => SharedPreferencesService());

  // Eager singletons must be registered in the right order
  gh.singleton<DialogService>(thirdPartyServicesModule.dialogService);
  gh.singleton<NavigationService>(thirdPartyServicesModule.navigationService);
  gh.singleton<PostsViewModel>(PostsViewModel());
  gh.singleton<SnackbarService>(thirdPartyServicesModule.snackbarService);
}

class _$ThirdPartyServicesModule extends ThirdPartyServicesModule {
  @override
  DialogService get dialogService => DialogService();
  @override
  NavigationService get navigationService => NavigationService();
  @override
  SnackbarService get snackbarService => SnackbarService();
}
