import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:up_todo/config/constants.dart';
import 'package:up_todo/config/theme_data/app_color.dart';

class MainWrapper extends StatelessWidget {
  static const String routeName = '/';
  const MainWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: Container(
        color: primaryDarkColor,
        height: 100,  
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: InkWell(
                splashColor: Colors.red,
                onTap: (){
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('$iconUrl/ic_wrapper_home_off.svg'),
                    const Gap(10),
                    const Text('Home')
                  ],
                ),
              ),
            ),
            Expanded(child: SvgPicture.asset('$iconUrl/ic_wrapper_home_off.svg')),
            Expanded(child: SvgPicture.asset('$iconUrl/ic_wrapper_home_off.svg')),
            Expanded(child: SvgPicture.asset('$iconUrl/ic_wrapper_home_off.svg')),
          ],
        ), 
      ),
      body:const SafeArea(
        child: Center(
          child: Text('data'),  
        ),
      ),
    );
  }
}
