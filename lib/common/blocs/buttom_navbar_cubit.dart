// ignore_for_file: unused_field

import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavbarCubit extends Cubit<int>{
  BottomNavbarCubit():super(0);



   int _cuttentPageIndex=0;

  void changePageIndex(int newIndex){
if(newIndex!=_cuttentPageIndex){
  emit(_cuttentPageIndex=newIndex);
}
  }

  

}