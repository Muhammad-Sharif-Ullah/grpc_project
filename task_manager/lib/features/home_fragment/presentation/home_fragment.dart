import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/features/project_details/presentation/pages/project_details_screen.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({super.key});

  @override
  HomeFragmentState createState() => HomeFragmentState();
}

class HomeFragmentState extends State<HomeFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        key: UniqueKey(),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [const HomeAppBar()];
        },
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              sliver: SliverToBoxAdapter(
                child: Text("Working Projects",
                    style: Theme.of(context).textTheme.headlineSmall),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              sliver: SliverAnimatedList(
                initialItemCount: 10,
                itemBuilder: (context, index, animation) {
                  return InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ProjectDetailsScreen()));
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
                            Text(
                              "SAS Dashboard Development",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
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
                            SizedBox(
                              height: 57,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                    backgroundColor:
                                                        Colors.white,
                                                    child: CircleAvatar(
                                                      radius: 16,
                                                      backgroundImage: NetworkImage(
                                                          "https://i.pravatar.cc/150?ima=$index"),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          "5 Peoples",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall,
                                          maxLines: 1,
                                          textAlign: TextAlign.justify,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      const Icon(
                                          CupertinoIcons.waveform_circle_fill),
                                      const SizedBox(height: 2),
                                      Text(
                                        "5 Task",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                        maxLines: 1,
                                        textAlign: TextAlign.justify,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      surfaceTintColor: Colors.transparent,
      titleSpacing: 30,
      leading: const Icon(
        CupertinoIcons.waveform,
      ),
      leadingWidth: 80,
      actions: [
        IconButton(
          icon: const Icon(CupertinoIcons.bell_fill),
          onPressed: () {},
        ),
        const SizedBox(width: 15),
      ],
      elevation: 5.0,
      pinned: true,
      bottom: PreferredSize(
        // Add this code
        preferredSize: const Size.fromHeight(95), // Add this code
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              const Text(
                "Hello! Sharif,",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 50,
                width: MediaQuery.sizeOf(context).width,
                child: Row(
                  children: [
                    const Expanded(
                      child: SizedBox(
                        height: 50,
                        child: CupertinoSearchTextField(
                          backgroundColor: CupertinoColors.systemGrey6,
                          placeholder: "Search",
                          padding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      height: 45,
                      width: 50,
                      child: IconButton.filled(
                        style: IconButton.styleFrom(
                          backgroundColor: CupertinoColors.systemGrey6,
                          // backgroundColor: CupertinoColors.tertiarySystemFill,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.square_fill_line_vertical_square,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ), // Add this code
      ),
    );
  }
}

 // "https://reflex.dev/blog/background_task.jpg",
