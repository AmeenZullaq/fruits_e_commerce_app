import 'package:e_commerce_app/core/services/database_service.dart';
import 'package:e_commerce_app/core/services/firebase_auth_service.dart';
import 'package:e_commerce_app/core/services/firestore_service.dart';
import 'package:e_commerce_app/core/services/storage_service.dart';
import 'package:e_commerce_app/core/services/supabase_storage_service.dart';
import 'package:e_commerce_app/features/auth/data/repos_impl/auth_repo_impl.dart';
import 'package:e_commerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/re_set_password_cubit/re_set_password_cubit.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/singin_cubit/sing_in_cubit.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/singup_cubit/sing_up_cubit.dart';
import 'package:e_commerce_app/core/repos/product_repo_impl.dart';
import 'package:e_commerce_app/core/repos/product_repo.dart';
import 'package:e_commerce_app/features/cart/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:e_commerce_app/features/cart/presentation/cubits/cart_item_cubit/cart_item_cubit.dart';
import 'package:e_commerce_app/features/checkout/data/repos_impl/order_repo_impl.dart';
import 'package:e_commerce_app/features/checkout/domain/repos/order_repo.dart';
import 'package:e_commerce_app/features/checkout/presentation/cubits/add_order_cubit/add_order_cubit.dart';
import 'package:e_commerce_app/features/products/presentation/cubits/get_products_cubit/get_products_cubit.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/logout_cubit/logout_cubit.dart';
import 'package:e_commerce_app/features/home/presentation/cubits/get_best_selling_products_cubit/get_best_selling_products_cubit.dart';
import 'package:e_commerce_app/features/profile/data/repos_impl/profile_repo_impl.dart';
import 'package:e_commerce_app/features/profile/domain/repos/profile_repo.dart';
import 'package:e_commerce_app/features/profile/presentation/cubits/get_user_info_cubit/get_user_info_cubit.dart';
import 'package:e_commerce_app/features/profile/presentation/cubits/update_user_info_cubit/update_user_info_cubit.dart';
import 'package:e_commerce_app/features/profile/presentation/cubits/upload_user_image_cubit/upload_user_image_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

abstract class InjectionContainer {
  static GetIt getIt = GetIt.instance;

  static Future<void> initAppDependencies() async {
    await initServicesDependencies();
    await initAuthDependencies();
    await initGetProductsDependencies();
    await initProfileDependency();
    await initCartDependency();
    await checkoutInitDependencies();
  }

  static Future<void> initServicesDependencies() async {
    getIt.registerLazySingleton<Logger>(
      () => Logger(),
    );
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
        getIt.get<ProductRepo>(),
      ),
    );
    getIt.registerLazySingleton<GetBestSellingProductsCubit>(
      () => GetBestSellingProductsCubit(
        getIt.get<ProductRepo>(),
      ),
    );
  }

  static Future<void> initProfileDependency() async {
    /// repos
    getIt.registerLazySingleton<StorageService>(
      () => SupabaseStorageService(),
    );
    getIt.registerLazySingleton<ProfileRepo>(
      () => ProfileRepoImpl(
        storageService: getIt.get<StorageService>(),
        databaseService: getIt.get<DatabaseService>(),
        firebaseAuthService: getIt.get<FirebaseAuthService>(),
      ),
    );

    /// cubits
    getIt.registerLazySingleton<UploadUserImageCubit>(
      () => UploadUserImageCubit(
        getIt.get<ProfileRepo>(),
      ),
    );
    getIt.registerLazySingleton<GetUserInfoCubit>(
      () => GetUserInfoCubit(
        getIt.get<ProfileRepo>(),
      ),
    );
    getIt.registerLazySingleton<UpdateUserInfoCubit>(
      () => UpdateUserInfoCubit(
        getIt.get<ProfileRepo>(),
      ),
    );
  }

  static Future<void> initCartDependency() async {
    /// cubits
    getIt.registerLazySingleton<CartCubit>(
      () => CartCubit(),
    );
    getIt.registerLazySingleton<CartItemCubit>(
      () => CartItemCubit(),
    );
  }

  static Future<void> checkoutInitDependencies() async {
    /// repos
    getIt.registerLazySingleton<OrderRepo>(
      () => OrderRepoImpl(
        firestoreService: getIt.get<DatabaseService>(),
      ),
    );

    /// Cubits

    getIt.registerLazySingleton<AddOrderCubit>(
      () => AddOrderCubit(
        getIt.get<OrderRepo>(),
      ),
    );
  }
}
