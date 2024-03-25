import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poeicp_client/models/user_model.dart';
import 'package:poeicp_client/presntation/manager/state/auth_state.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitState());
  static AuthCubit get(context) => BlocProvider.of(context);

  UserModel? user;

  void createUser({
    required String email,
    required String name,
    required String password,
    required String phone,
  }) async {
    emit(AuthLoadingState());
    try {
      final response = await Dio().post(
        "https://student.valuxapps.com/api/register",
        data: {
          'email': email,
          'password': password,
          'name': name,
          'phone': phone,
        },
        options: Options(headers: {
          'Content_Type': 'application/json',
          'lang': 'ar',
        }),
      );
      user = UserModel.fromJson(response.data);
      log(user!.data.name);
      emit(AuthSuccessState());
    } catch (e) {
      emit(AuthErrState());
    }
  }
}
