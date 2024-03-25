import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poeicp_client/presntation/manager/state/reports_state.dart';

class ReportsCubit extends Cubit<ReportsStates> {
  ReportsCubit() : super(ReportInitState());

  static ReportsCubit get(context) => BlocProvider.of(context);
}
