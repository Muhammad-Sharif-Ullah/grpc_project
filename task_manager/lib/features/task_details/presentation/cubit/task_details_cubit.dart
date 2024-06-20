import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'task_details_state.dart';

class TaskDetailsCubit extends Cubit<TaskDetailsState> {
  TaskDetailsCubit() : super(TaskDetailsInitial());
}
