import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_fragment_state.dart';

class HomeFragmentCubit extends Cubit<HomeFragmentState> {
  HomeFragmentCubit() : super(HomeFragmentInitial());
}
