part of 'add_task_bloc.dart';

@immutable
sealed class AddTaskState {}

final class AddTaskTitle extends AddTaskState {}

final class AddTaskDescription extends AddTaskState{}
