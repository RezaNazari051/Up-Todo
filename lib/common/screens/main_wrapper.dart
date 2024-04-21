import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:up_todo/common/blocs/add_tesk_bloc/bloc/add_task_bloc.dart';
import 'package:up_todo/common/blocs/buttom_navbar_cubit.dart';
import 'package:up_todo/config/constants.dart';
import 'package:up_todo/config/theme_data/app_color.dart';
import 'package:up_todo/config/theme_data/style.dart';
import 'package:up_todo/features/home/screens/home_screen.dart';

class MainWrapper extends StatefulWidget {
  static const String routeName = '/';
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;

  @override
  void initState() {
    _titleController=TextEditingController();
    _descriptionController=TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }
  final FocusNode _descriptionFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: SizedBox.fromSize(
          size: const Size(64, 64),
          child: FloatingActionButton(
            shape: const CircleBorder(),
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: primaryDarkColor,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                ),
                context: context,
                builder: (context) => BlocProvider(
                  create: (context) => AddTaskBloc(),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(25.w, 25.w, 25.w,
                        MediaQuery.of(context).viewInsets.bottom + 15.h),
                    child: BlocBuilder<AddTaskBloc, AddTaskState>(
                      builder: (context, state) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Add Task',
                                style: context
                                    .getTextStyle('bodyMedium')
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Gap(15.h),
                            TextFormField(
                              autofocus: true,
                              onTap: () {
                                if(_descriptionController.text.isEmpty){
                                  BlocProvider.of<AddTaskBloc>(context).add(PreviousStepAddTask());
                                }
                              },
                              onFieldSubmitted: (value) {
                                BlocProvider.of<AddTaskBloc>(context)
                                    .add(NextStepAddTask());
                                FocusScope.of(context)
                                    .requestFocus(_descriptionFocusNode);
                              },
                              decoration:
                                  const InputDecoration(hintText: 'Task title'),
                            ),
                            Gap(15.h),
                            TextFormField(
                              controller: _descriptionController,
                              focusNode: _descriptionFocusNode,
                              decoration: InputDecoration(
                                  hintText: 'Task description',
                                  enabledBorder: state is AddTaskDescription
                                      ? Theme.of(context)
                                          .inputDecorationTheme
                                          .enabledBorder
                                      : InputBorder.none),
                            ),
                            Gap(15.h),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon:
                                      SvgPicture.asset('$iconUrl/ic_timer.svg'),
                                ),
                                Gap(5.w),
                                IconButton(
                                  onPressed: () {},
                                  icon: SvgPicture.asset('$iconUrl/ic_tag.svg'),
                                ),
                                Gap(5.w),
                                IconButton(
                                  onPressed: () {},
                                  icon:
                                      SvgPicture.asset('$iconUrl/ic_flag.svg'),
                                ),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon:
                                      SvgPicture.asset('$iconUrl/ic_send.svg'),
                                ),
                              ],
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ),
              );
            },
            backgroundColor: primaryColor,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: primaryDarkColor,
        height: 100,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtomNavbarItemWidget(
              icon: 'ic_wrapper_home_',
              pageIndex: 0,
              lable: 'Home',
            ),
            ButtomNavbarItemWidget(
              icon: 'ic_wrapper_calendar_',
              pageIndex: 1,
              lable: 'Calendar',
            ),
            Spacer(),
            ButtomNavbarItemWidget(
                icon: 'ic_wrapper_clock_', pageIndex: 2, lable: 'Focuse'),
            ButtomNavbarItemWidget(
              icon: 'ic_wrapper_user_',
              pageIndex: 3,
              lable: 'Profile',
            ),
          ],
        ),
      ),
      body: const SafeArea(
          child: IndexedStack(
        children: [
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
        ],
      )),
    );
  }
}

class ButtomNavbarItemWidget extends StatelessWidget {
  const ButtomNavbarItemWidget(
      {super.key,
      required this.icon,
      required this.pageIndex,
      required this.lable});

  final String icon;
  final String lable;
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
            BlocBuilder<BottomNavbarCubit, int>(
              builder: (context, state) {
                return SvgPicture.asset(state == pageIndex
                    ? '$iconUrl/${icon}on.svg'
                    : '$iconUrl/${icon}off.svg');
              },
            ),
            const Gap(10),
            Text(
              lable,
              style: context
                  .getTextStyle('bodySmall')
                  .apply(fontSizeDelta: -3.5.sp),
            )
          ],
        ),
      ),
    );
  }
}
