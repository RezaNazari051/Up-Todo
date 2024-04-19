import 'package:flutter/material.dart';
import 'package:up_todo/common/screens/main_wrapper.dart';

Map <String,WidgetBuilder> routeMethod(){
  return <String,WidgetBuilder>{
    MainWrapper.routeName:(context) => const MainWrapper()
  };
}