import 'package:flutter/material.dart';

import '../../../../core/widgets/app_bar.dart';
import '../../domain/entities/post.dart';
import '../widgets/post_view.dart';

part '../utils/utils.dart';

class TimelinePage extends StatefulWidget {
  const TimelinePage({super.key});

  static const route = '/timeline';

  @override
  State<TimelinePage> createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  List<Post> posts = clips;
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        title: 'Adventure',
        canPop: false,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return ClipItemView(
              key: Key('${posts[index]}'),
              post: posts[index],
              onReload: (post) {
                setState(() {
                  posts.remove(post);
                });
              },
            );
          },
        ),
      ),
    );
  }
}
