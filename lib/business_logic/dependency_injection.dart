import 'package:get_it/get_it.dart';
import 'package:shoppeapp/business_logic/repositories/auth_repo.dart';

final GetIt getIt = GetIt.instance;

Future<void> setup () async {
  getIt.registerLazySingleton(() => AuthRepo());
  
}
