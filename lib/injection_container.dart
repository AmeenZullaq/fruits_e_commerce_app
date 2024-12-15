import 'package:e_commerce_app/core/services/database_service.dart';
import 'package:e_commerce_app/core/services/firebase_auth_service.dart';
import 'package:e_commerce_app/core/services/firestore_service.dart';
import 'package:e_commerce_app/features/auth/data/repos_impl/auth_repo_impl.dart';
import 'package:e_commerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/re_set_password_cubit/re_set_password_cubit.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/singin_cubit/sing_in_cubit.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/singup_cubit/sing_up_cubit.dart';
import 'package:e_commerce_app/features/home/data/repos_impl/product_repo_impl.dart';
import 'package:e_commerce_app/features/home/domain/repos/product_repo.dart';
import 'package:e_commerce_app/features/home/presentation/cubits/get_products_cubit/get_products_cubit.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/logout_cubit/logout_cubit.dart';
import 'package:get_it/get_it.dart';

abstract class InjectionContainer {
  static GetIt getIt = GetIt.instance;

  static Future<void> initAppDependencies() async {
    await initAuthDependencies();
    await initGetProductsDependencies();
  }

  static Future<void> initAuthDependencies() async {
    /// Data source
    getIt.registerLazySingleton<FirebaseAuthService>(
      () => FirebaseAuthService(),
    );
    getIt.registerLazySingleton<DatabaseService>(
      () => FirestoreService(),
    );

    /// Repos
    getIt.registerLazySingleton<AuthRepo>(
      () => AuthRepoImpl(
        getIt.get<FirebaseAuthService>(),
        getIt.get<DatabaseService>(),
      ),
    );

    /// Cubits
    getIt.registerLazySingleton<SingUpCubit>(
      () => SingUpCubit(
        getIt.get<AuthRepo>(),
      ),
    );
    getIt.registerLazySingleton<SingInCubit>(
      () => SingInCubit(
        getIt.get<AuthRepo>(),
      ),
    );
    getIt.registerLazySingleton<ReSetPasswordCubit>(
      () => ReSetPasswordCubit(
        getIt.get<AuthRepo>(),
      ),
    );
    getIt.registerLazySingleton<LogoutCubit>(
      () => LogoutCubit(
        getIt.get<AuthRepo>(),
      ),
    );
  }

  static Future<void> initGetProductsDependencies() async {
    /// Repos
    getIt.registerLazySingleton<ProductRepo>(
      () => ProductRepoImpl(
        databaseService: getIt.get<DatabaseService>(),
      ),
    );

    /// Cubits
    getIt.registerLazySingleton<GetProductsCubit>(
      () => GetProductsCubit(
        getIt.get<ProductRepoImpl>(),
      ),
    );
  }
}
