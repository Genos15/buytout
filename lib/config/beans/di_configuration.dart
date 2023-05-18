import 'package:buytout/shared/index.dart';
import 'package:get_it/get_it.dart';

final GetIt _instance = GetIt.instance;
const _kRuntimeTimeout = 5000;

// this function is used to create all DI instance necessary for App running
Future<void> initDi() async {
  /**
   * Initialization of repositories*/
  _instance.registerSingleton<ProductRepository>(
    ProductRepositoryImpl(),
    signalsReady: true,
  );

  /**
   * Initialization of services*/
  _instance.registerSingleton<ProductService>(
    ProductServiceImpl(repository: _instance.get()),
    signalsReady: true,
  );

  /**
   * Validate initializations*/
  await _instance.allReady(timeout: _kRuntimeTimeout.milliseconds);
}
