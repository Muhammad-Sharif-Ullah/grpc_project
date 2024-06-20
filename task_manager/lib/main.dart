import 'dart:developer';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:task_manager/features/home_fragment/presentation/home_fragment.dart';
import 'package:task_manager/features/project_details/presentation/pages/create_new_project_screen.dart';
import 'package:task_manager/features/task_details/presentation/pages/create_new_task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Impales',
      theme: ThemeData.light().copyWith(
        primaryColorLight: const Color(0xFFC74221),
        primaryColor: const Color(0xFFC74221),
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFC74221),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        tabBarTheme: const TabBarTheme(
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Color(0xFFC74221),
          labelColor: Color(0xFFC74221),
          labelStyle: TextStyle(
            color: Color(0xFFC74221),
          ),
          tabAlignment: TabAlignment.center,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Color(0xFFC74221),
          type: BottomNavigationBarType.fixed,
        ),
      ),
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark().copyWith(
        primaryColorDark: const Color(0xFFC74221),
        primaryColor: const Color(0xFFC74221),
        scaffoldBackgroundColor: const Color(0xFF000000),
        tabBarTheme: const TabBarTheme(
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Color(0xFFC74221),
          labelColor: Color(0xFFC74221),
          labelStyle: TextStyle(
            color: Color(0xFFC74221),
          ),
          tabAlignment: TabAlignment.center,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFC74221),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Color(0xFFC74221),
          type: BottomNavigationBarType.fixed,
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  ValueNotifier<int> currentIndex = ValueNotifier<int>(0);
  ValueNotifier<bool> showOption = ValueNotifier<bool>(false);

  late AnimationController animCnt;
  @override
  void initState() {
    super.initState();
    animCnt = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
      animationBehavior: AnimationBehavior.preserve,
    );
    Future.delayed(const Duration(seconds: 1)).whenComplete(() {
      animCnt.reverse();
    });
  }

  @override
  void dispose() {
    animCnt.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return ValueListenableBuilder(
        valueListenable: currentIndex,
        builder: (context, value, child) {
          return Scaffold(
            floatingActionButton: FloatingActionButton.small(
              backgroundColor: Theme.of(context).primaryColor,
              child: const Icon(
                CupertinoIcons.add,
                color: Colors.white,
              ).animate(
                controller: animCnt,
                effects: [
                  const RotateEffect(
                    begin: 0,
                    end: 0.62,
                  ),
                ],
              ),
              onPressed: () {
                if (animCnt.isCompleted) {
                  animCnt.reverse();
                  showOption.value = false;
                } else {
                  animCnt.forward();
                  showOption.value = true;
                }
              },
            ).animate(
              controller: animCnt,
              effects: [
                const ScaleEffect(
                  begin: Offset(1.4, 1.4),
                  end: Offset(1, 1),
                ),
              ],
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,

            body: Stack(
              clipBehavior: Clip.none,
              children: [
                const HomeFragment(),
                ValueListenableBuilder(
                    valueListenable: showOption,
                    builder: (context, isShowOption, widget) {
                      if (!isShowOption) {
                        return const SizedBox();
                      }
                      return Positioned(
                        bottom: MediaQuery.paddingOf(context).bottom + 40,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 50,
                                  sigmaY: 50,
                                ),
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.transparent,
                                  ),
                                  child: Row(
                                    children: [
                                      TextButton.icon(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const CreateNewProjectScreen()));
                                          animCnt.reverse();
                                          showOption.value = false;
                                        },
                                        icon: Icon(
                                          CupertinoIcons.projective,
                                          color: isDarkMode
                                              ? Colors.white
                                              : const Color(0xFFC74221),
                                        ),
                                        label: Text(
                                          "Project",
                                          style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : const Color(0xFFC74221),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 5,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFC74221),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      TextButton.icon(
                                        onPressed: () {
                                          log("Create Task");
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const CreateNewTaskScreen()));
                                          animCnt.reverse();
                                          showOption.value = false;
                                        },
                                        icon: Icon(
                                          CupertinoIcons.waveform,
                                          color: isDarkMode
                                              ? Colors.white
                                              : const Color(0xFFC74221),
                                        ),
                                        label: Text(
                                          "Task\t\t",
                                          style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : const Color(0xFFC74221),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ).animate(
                        effects: [
                          const MoveEffect(
                            begin: Offset(1, 20),
                            end: Offset(1, 1),
                            curve: Curves.fastOutSlowIn,
                          ),
                        ],
                      );
                    }),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              onTap: (int index) {
                currentIndex.value = index;
              },
              currentIndex: value,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.home,
                    ),
                    label: "Task"),
                BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.waveform_path_ecg,
                  ),
                  label: "Analytics",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.timelapse,
                  ),
                  label: "Timeline",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.profile_circled,
                  ),
                  label: "Profile",
                ),
              ],
            ),
            // tabBuilder: (context, index) => const HomeFragment(),
          );
        });
  }
}
