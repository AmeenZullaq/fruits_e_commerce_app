import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/core/entities/user_entity.dart';
import 'package:e_commerce_app/features/profile/domain/repos/profile_repo.dart';
import 'package:meta/meta.dart';

part 'get_user_info_state.dart';

class GetUserInfoCubit extends Cubit<GetUserInfoState> {
  GetUserInfoCubit(this.profileRepo) : super(GetUserInfoInitial());

  final ProfileRepo profileRepo;

  Future<void> getUserInfo() async {
    emit(
      GetUserInfoLoading(),
    );
    final resulte = await profileRepo.getUserInfo();
    resulte.fold(
      (failure) {
        emit(
          GetUserInfoFailure(errMessage: failure.errMessage),
        );
      },
      (user) {
        emit(
          GetUserInfoSuccess(user: user),
        );
      },
    );
  }
}
