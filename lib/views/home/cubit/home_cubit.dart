import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:humo_test_app/views/home/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(InitialState());
}
