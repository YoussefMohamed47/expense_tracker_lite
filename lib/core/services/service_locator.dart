import 'package:dio/dio.dart';
import 'package:expense_tracker_lite/core/data/Caching/cache_manager.dart';
import 'package:expense_tracker_lite/core/data/data_source/local_data_source.dart';
import 'package:expense_tracker_lite/core/data/data_source/remote_data_source.dart';
import 'package:expense_tracker_lite/core/network/app_api.dart';
import 'package:expense_tracker_lite/core/network/dio_factory.dart';
import 'package:expense_tracker_lite/core/network/network_info.dart';
import 'package:expense_tracker_lite/modules/bottom%20bar/presentation/bloc/bottom_bar_bloc.dart';
import 'package:expense_tracker_lite/modules/expense/data/repo/expense_repo_impl.dart';
import 'package:expense_tracker_lite/modules/expense/domain/repo/expense_repo.dart';
import 'package:expense_tracker_lite/modules/expense/presentation/bloc/expense_bloc.dart';
import 'package:expense_tracker_lite/modules/home/presentation/bloc/home_bloc.dart';
import 'package:expense_tracker_lite/modules/home/presentation/data/home_repo_implp.dart';
import 'package:expense_tracker_lite/modules/home/presentation/domain/home_repo.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  // app module, its a module where we put all generic dependencies

  // shared prefs instance
  final sharedPrefs = await SharedPreferences.getInstance();

  instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs);

//Caching Hive

  final cacheManager = CacheManager();
  await cacheManager.init();

  instance.registerSingleton<LocalDataSource>(
    LocalDataSourceImpl(cacheManager: cacheManager),
  );

  // network info
  instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(InternetConnectionChecker.instance));

  // dio factory
  instance.registerLazySingleton<DioFactory>(() => DioFactory());

  Dio dio = await instance<DioFactory>().getDio();
  //app service client
  instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));

  // remote data source
  instance.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(instance<AppServiceClient>()));

  // repository
  instance.registerLazySingleton<ExpenseRepository>(
      () => ExpenseRepositoryRepoImpl(instance(), instance()));
  instance.registerLazySingleton<HomeRepo>(() => HomeRepoImpl(instance()));

  // Bloc
  instance.registerLazySingleton<BottomBarBloc>(() => BottomBarBloc());
  instance.registerLazySingleton<HomeBloc>(() => HomeBloc(instance()));
  instance.registerLazySingleton<ExpenseBloc>(() => ExpenseBloc(
        instance(),
      ));
}
