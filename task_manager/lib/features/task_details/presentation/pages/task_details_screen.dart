import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:task_manager/features/task_details/presentation/pages/create_new_task_screen.dart';

class TaskDetailsScreen extends StatefulWidget {
  const TaskDetailsScreen({super.key});

  @override
  TaskDetailsScreenState createState() => TaskDetailsScreenState();
}

class TaskDetailsScreenState extends State<TaskDetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      tabIndex.value = _tabController.index;
    });
  }

  ValueNotifier<int> tabIndex = ValueNotifier<int>(0);
  ScrollController mainScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Task Details",
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
      floatingActionButton: SizedBox(
        width: 180,
        child: ValueListenableBuilder(
          valueListenable: tabIndex,
          builder: (context, currentIndex, widget) {
            if (currentIndex == 0 || currentIndex == 1) {
              return FloatingActionButton.small(
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xFFC74221),
                onPressed: () {
                  //
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateNewTaskScreen()));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.waveform_path,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Text("Create New Task"),
                  ],
                ),
              ).animate(
                key: const Key('01'),
                effects: [
                  const SlideEffect(
                    begin: Offset(1, 0),
                    end: Offset(0, 0),
                  ),
                ],
              );
            }
            return FloatingActionButton.small(
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xFFC74221),
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.chat_bubble,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  Text("New Comment"),
                ],
              ),
            ).animate(
              key: const Key('2'),
              effects: [
                const SlideEffect(
                  begin: Offset(1, 0),
                  end: Offset(0, 0),
                ),
              ],
            );
          },
        ),
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
                    CupertinoIcons.waveform_path,
                    color: Theme.of(context).primaryColor,
                    size: 30,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Tasks Activity",
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
                      child: Text('My Time Log')),
                  Padding(
                      padding: EdgeInsets.only(top: 12, bottom: 12),
                      child: Text('Time Log')),
                  Padding(
                      padding: EdgeInsets.only(top: 12, bottom: 12),
                      child: Text('Comments')),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          physics: const ClampingScrollPhysics(),
          children: [
            const Placeholder(),
            const Placeholder(),
            const CommentList(),
          ],
        ),
      ),
    );
  }
}

class CommentList extends StatelessWidget {
  const CommentList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        // comment item
        return Card(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://i.pravatar.cc/150?img=$index"),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("User $index"),
                      Text(
                        "2 hours ago",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                        overflow: TextOverflow.visible,
                        // textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(CupertinoIcons.ellipsis),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 5),
      itemCount: 20,
    );
  }
}
