import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/features/task_details/presentation/pages/task_details_screen.dart';

class ProjectDetailsScreen extends StatefulWidget {
  const ProjectDetailsScreen({super.key});

  @override
  ProjectDetailsScreenState createState() => ProjectDetailsScreenState();
}

class ProjectDetailsScreenState extends State<ProjectDetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  ScrollController mainScrollController = ScrollController();
  ValueNotifier<bool> scrollOff = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);

    mainScrollController.addListener(() {
      if (mainScrollController.position.atEdge) {
        if (mainScrollController.position.pixels ==
            mainScrollController.position.maxScrollExtent) {
          scrollOff.value = true;
          log('true');
        } else {
          scrollOff.value = false;
          log('false');
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Project Details",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white,
              ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.bell_fill),
            onPressed: () {},
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: NestedScrollView(
        controller: mainScrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(8.0),
              sliver: SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "SAS Dashboard Development",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            "Status",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(width: 25),
                          Container(
                            height: 25,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.blue,
                            ),
                            child: Center(
                              child: Text(
                                "In Progress",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            "Priority",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(width: 20),
                          Container(
                            height: 25,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.blue,
                            ),
                            child: Center(
                              child: Text(
                                "In Progress",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Description",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                        style: Theme.of(context).textTheme.bodySmall,
                        maxLines: 3,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Assignee",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.separated(
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 5),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return CircleAvatar(
                              radius: 28,
                              backgroundColor: CupertinoColors.systemGrey3,
                              child: CircleAvatar(
                                radius: 26,
                                backgroundImage: NetworkImage(
                                    "https://i.pravatar.cc/150?img=$index"),
                              ),
                            );
                          },
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverAppBar(
              primary: false,
              backgroundColor: isDarkMode
                  ? Theme.of(context).cardColor
                  : CupertinoColors.tertiarySystemBackground,
              leading: const SizedBox(),
              collapsedHeight: 60,
              leadingWidth: 0,
              title: Row(
                children: [
                  Icon(
                    CupertinoIcons.waveform_circle_fill,
                    color: Theme.of(context).primaryColor,
                    size: 30,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Project Tasks",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              centerTitle: false,
              surfaceTintColor: Colors.transparent,
              elevation: 5.0,
              pinned: true,
              floating: true,
              bottom: TabBar(
                isScrollable: true,
                controller: _tabController,
                tabs: const [
                  Padding(
                      padding: EdgeInsets.only(top: 12, bottom: 12),
                      child: Text('All-Task')),
                  Padding(
                      padding: EdgeInsets.only(top: 12, bottom: 12),
                      child: Text('In-Progress')),
                  Padding(
                      padding: EdgeInsets.only(top: 12, bottom: 12),
                      child: Text('Completed')),
                  Padding(
                      padding: EdgeInsets.only(top: 12, bottom: 12),
                      child: Text('Not Started')),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          physics: const ClampingScrollPhysics(),
          children: [
            TaskListView(scrollOff: scrollOff, index: 1),
            TaskListView(scrollOff: scrollOff, index: 1),
            TaskListView(scrollOff: scrollOff, index: 2),
            TaskListView(scrollOff: scrollOff, index: 3),
          ],
        ),
      ),
    );
  }
}

class ProjectAppBar extends StatelessWidget {
  final bool innerBoxIsScrolled;
  const ProjectAppBar({super.key, required this.innerBoxIsScrolled});

  @override
  Widget build(BuildContext context) {
    log(innerBoxIsScrolled.toString());
    return SliverAppBar(
      // expandedHeight: 200.0,
      actions: [
        IconButton(
          icon: const Icon(CupertinoIcons.bell_fill),
          onPressed: () {},
        ),
        const SizedBox(width: 15),
      ],
      surfaceTintColor: Colors.transparent,
      elevation: 5.0,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: !innerBoxIsScrolled
            ? const SizedBox()
            : const Text(
                "SAS Dashboard Development",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
        // background: Image.network(
        //   "https://reflex.dev/blog/background_task.jpg",
        //   fit: BoxFit.cover,
        // ),
      ),
      pinned: true,
      // bottom: PreferredSize(
      //   // Add this code
      //   preferredSize: const Size.fromHeight(95), // Add this code
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 20),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         const SizedBox(height: 15),
      //         const Text(
      //           "Hello! Sharif,",
      //           style: TextStyle(
      //             color: Colors.white,
      //           ),
      //         ),
      //         const SizedBox(height: 15),
      //         SizedBox(
      //           height: 50,
      //           width: MediaQuery.sizeOf(context).width,
      //           child: Row(
      //             children: [
      //               const Expanded(
      //                 child: SizedBox(
      //                   height: 50,
      //                   child: CupertinoSearchTextField(
      //                     backgroundColor: CupertinoColors.systemGrey6,
      //                     placeholder: "Search",
      //                     padding: EdgeInsets.symmetric(horizontal: 10),
      //                   ),
      //                 ),
      //               ),
      //               const SizedBox(width: 10),
      //               SizedBox(
      //                 height: 45,
      //                 width: 50,
      //                 child: IconButton.filled(
      //                   style: IconButton.styleFrom(
      //                     backgroundColor: CupertinoColors.systemGrey6,
      //                     // backgroundColor: CupertinoColors.tertiarySystemFill,
      //                     shape: RoundedRectangleBorder(
      //                       borderRadius: BorderRadius.circular(8),
      //                     ),
      //                   ),
      //                   onPressed: () {},
      //                   icon: const Icon(
      //                     CupertinoIcons.square_fill_line_vertical_square,
      //                     color: Colors.black,
      //                   ),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //         const SizedBox(height: 15),
      //       ],
      //     ),
      //   ), // Add this code
      // ),
    );
  }
}

class TaskListView extends StatelessWidget {
  final ValueNotifier<bool> scrollOff;
  final int index;

  const TaskListView({super.key, required this.scrollOff, required this.index});

  @override
  Widget build(BuildContext context) {
    // return ValueListenableBuilder(
    //   valueListenable: scrollOff,
    //   builder: (context, value, child) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      // physics: !value
      //     ? NeverScrollableScrollPhysics()
      //     : const ClampingScrollPhysics(),
      itemBuilder: (context, index) => InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TaskDetailsScreen(),
            ),
          );
        },
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SAS Dashboard Development",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          "Start at: 13 June 2024",
                          style: Theme.of(context).textTheme.labelSmall,
                          maxLines: 1,
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(width: 16),
                        Container(
                          height: 25,
                          width: 70,
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.blue,
                          ),
                          child: FittedBox(
                            child: Center(
                              child: Text(
                                "In Progress",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 25,
                          width: 70,
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.blue,
                          ),
                          child: FittedBox(
                            child: Center(
                              child: Text(
                                "High",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 20),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                  style: Theme.of(context).textTheme.bodySmall,
                  maxLines: 3,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 57,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 35,
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  for (int i = 0; i < 5; i++)
                                    Positioned(
                                      left: i * 25,
                                      child: CircleAvatar(
                                        radius: 18,
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          radius: 16,
                                          backgroundImage: NetworkImage(
                                              "https://i.pravatar.cc/150?img=$i"),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "5 Peoples",
                              style: Theme.of(context).textTheme.labelSmall,
                              maxLines: 1,
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
      itemCount: 10,
    );
    //   },
    // );
  }
}
