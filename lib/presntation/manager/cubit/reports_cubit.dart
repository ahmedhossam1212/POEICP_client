import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poeicp_client/config/network/constans.dart';
import 'package:poeicp_client/models/report_model.dart';
import 'package:poeicp_client/presntation/manager/state/reports_state.dart';

class ReportsCubit extends Cubit<ReportsStates> {
  ReportsCubit() : super(ReportInitState());

  static ReportsCubit get(context) => BlocProvider.of(context);

  void foodreport({
    required String phone,
    required String postImage,
    required String email,
    required String note,
    required String payed,
    required String price,
    required String productType,
    required String shopAddress,
    required String shopName,
  }) async {
    emit(ReportLoadingState());
    ReportsModel model = ReportsModel(
      postImage: postImage,
      phone: phone,
      uId: uId,
      email: email,
      note: note,
      payed: payed,
      price: price,
      productType: productType,
      shopAddress: shopAddress,
      shopName: shopName,
    );
    await FirebaseFirestore.instance
        .collection('foodReport')
        .doc("${DateTime.now()}")
        .set(model.toMap())
        .then((value) {
      emit(ReportSuccessState());
    }).catchError((error) {
      log(error.toString());
      emit(ReportErrState());
    });
  }
}
