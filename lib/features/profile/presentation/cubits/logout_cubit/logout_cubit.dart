import 'package:e_commerce_app/features/profile/domain/repos/profile_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  LogoutCubit(this.profileRepo) : super(LogoutInitial());

  final ProfileRepo profileRepo;

  Future<void> logOut() async {
    emit(
      LogoutLoading(),
    );
    var resulte = await profileRepo.logOut();
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
