import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_task_event.dart';
part 'add_task_state.dart';

class AddTaskBloc extends Bloc<AddTaskEvent, AddTaskState> {
  AddTaskBloc() : super(AddTaskTitle()) { 
    on<NextStepAddTask>((event, emit) {

      switch(state){
        
        case AddTaskTitle():emit(AddTaskDescription());
        case AddTaskDescription():print('object');
      }


    });    
    on<PreviousStepAddTask>((event, emit) {

      switch(state){
        
        case AddTaskTitle():print('object');
        case AddTaskDescription():emit(AddTaskTitle());
      }


    });
  }
}
