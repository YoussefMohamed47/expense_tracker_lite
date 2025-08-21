import 'package:dio/dio.dart';
import 'package:expense_tracker_lite/core/data/data_source/local_data_source.dart';
import 'package:expense_tracker_lite/core/data/data_source/remote_data_source.dart';
import 'package:expense_tracker_lite/core/network/app_api.dart';
import 'package:expense_tracker_lite/core/network/dio_factory.dart';
import 'package:expense_tracker_lite/core/network/network_info.dart';
import 'package:expense_tracker_lite/modules/bottom%20bar/presentation/bloc/bottom_bar_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  // app module, its a module where we put all generic dependencies

  // shared prefs instance
  final sharedPrefs = await SharedPreferences.getInstance();

  instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs);

  // app prefs instance
  //instance.registerLazySingleton<SharedPrefHelper>(() => SharedPrefHelper(instance()));

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

  // local data source
  instance.registerLazySingleton<LocalDataSource>(() => LocalDataSourceImpl());

  // repository

  // Bloc
  instance.registerLazySingleton<BottomBarBloc>(() => BottomBarBloc());
}
