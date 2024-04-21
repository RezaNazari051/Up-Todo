part of 'add_task_bloc.dart';

@immutable
sealed class AddTaskEvent {}


class NextStepAddTask extends AddTaskEvent{}

class PreviousStepAddTask extends AddTaskEvent{ }
