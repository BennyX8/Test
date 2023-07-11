import 'package:flutter/material.dart';

import '../../domain/entities/post.dart';
import 'post_actions.dart';
import 'post_body.dart';
import 'post_header.dart';

class ClipItemView extends StatefulWidget {
  final Post post;
  final void Function(Post)? onReload;

  const ClipItemView({
    Key? key,
    required this.post,
    required this.onReload,
  }) : super(key: key);

  @override
  State<ClipItemView> createState() => _ClipItemViewState();
}

class _ClipItemViewState extends State<ClipItemView> {
  final double margin = 12.0;
  late Post post;

  @override
  void initState() {
    super.initState();

    post = widget.post;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shadowColor: Colors.black12,
      child: Container(
        decoration: const BoxDecoration(),
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(4.0),
        margin: EdgeInsets.symmetric(
          horizontal: margin,
          vertical: 10.0,
        ),
        child: Column(
          children: [
            //* Post Header
            PostHeader(
              post: post,
              onTap: (user) {},
              onMenuAction: (p0) {},
            ),

            //* Vertical Spacer
            const SizedBox(height: 10.0),

            //* Post Body
            PostBody(
              post: post,
            ),

            //* Post Actions
            PostActions(
              post: post,
              onUpdate: (post) {
                setState(() {
                  this.post = post;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
