import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:up_todo/common/blocs/buttom_navbar_cubit.dart';
import 'package:up_todo/config/constants.dart';
import 'package:up_todo/config/theme_data/app_color.dart';

class MainWrapper extends StatefulWidget {
  static const String routeName = '/';
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: primaryDarkColor,
        height: 100,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtomNavbarItemWidget( icon: 'ic_wrapper_home_', pageIndex: 0),
            ButtomNavbarItemWidget( icon: 'ic_wrapper_calendar_', pageIndex: 1),
            ButtomNavbarItemWidget( icon: 'ic_wrapper_clock_', pageIndex: 2),
            ButtomNavbarItemWidget( icon: 'ic_wrapper_user_', pageIndex: 3),
          ],
        ),
      ),
      body: const SafeArea(
        child: Center( 
          child: Text('data'), 
        ),
      ),
    );
  }
}

class ButtomNavbarItemWidget extends StatelessWidget {
  const ButtomNavbarItemWidget(
      {super.key,
      required this.icon,
      required this.pageIndex});

  final String icon;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.red,
        onTap: () {
          BlocProvider.of<BottomNavbarCubit>(context)
              .changePageIndex(pageIndex);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<BottomNavbarCubit,int>(
              builder: (context, state) {
                return SvgPicture.asset(state == pageIndex
                    ? '$iconUrl/${icon}on.svg'
                    : '$iconUrl/${icon}off.svg');
              },
            ),
            const Gap(10),
            const Text('Home')
          ],
        ),
      ),
    );
  }
}
