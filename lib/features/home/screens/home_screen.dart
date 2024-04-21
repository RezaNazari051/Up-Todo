import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:up_todo/config/constants.dart';
import 'package:up_todo/config/theme_data/style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Index', style: Theme.of(context).textTheme.bodyMedium),
        centerTitle: true,
        leading: IconButton(onPressed: (){},icon:const Icon(CupertinoIcons.line_horizontal_3_decrease,color: Colors.white),),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10,top: 10,bottom: 5),
            child: InkWell(
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: FlutterLogo(),
              ),
            ),
          ),
        ],
      ),
      body:  SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('$imageUrl/img_no_task_here.png'),
            Text('What do you want to do today?'),
            Gap(10.h),
            Text('Tap + to add your tasks',style: context.getTextStyle('bodySmall')),

          ],
        ),
      ),
    );
  }
}
