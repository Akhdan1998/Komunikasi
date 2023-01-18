import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/api_return_velue.dart';
import '../models/model_cubit.dart';
import '../services/user_services.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  Future<void> getProfile(String token, String community_id) async {
    ApiReturnValue<List<CommunityGroup>>? result =
        await UserServices.getProfile(token, '${community_id}');
    if (result?.value != null) {
      emit(UserLoaded(user: result?.value));
    } else {
      emit(UserLoadingFailed(result?.message));
    }
  }
}
