import 'package:e_commerce_app/core/services/firebase_auth_service.dart';
import 'package:e_commerce_app/core/services/firestore_service.dart';
import 'package:e_commerce_app/features/auth/data/repos_impl/auth_repo_impl.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void getItService() {
  getIt.registerSingleton<FirebaseAuthService>(
    FirebaseAuthService(),
  );
  getIt.registerSingleton<FirestoreService>(
    FirestoreService(),
  );
  getIt.registerSingleton<AuthRepoImpl>(
    AuthRepoImpl(
      getIt.get<FirebaseAuthService>(),
      getIt.get<FirestoreService>(),
    ),
  );
}
