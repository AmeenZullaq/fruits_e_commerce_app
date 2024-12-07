import 'package:e_commerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  LogoutCubit(this.authRepo) : super(LogoutInitial());

  final AuthRepo authRepo;

  Future<void> logOut() async {
    emit(
      LogoutLoading(),
    );
    var resulte = await authRepo.logOut();
    resulte.fold(
      (failure) {
        emit(
          LogoutFailure(errMessage: failure.errMessage),
        );
      },
      (r) {
        emit(
          LogoutSuccess(),
        );
      },
    );
  }
}
