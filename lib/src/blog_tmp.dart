import 'package:blog_app/src/blog_class.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BlogTmp extends StatelessWidget {
  final Blog blog;

  BlogTmp({Key? key, required this.blog}) : super(key: key);

  @override
  Widget build(ctx) {
    return Container(
      margin: EdgeInsets.all(8),
      width: double.infinity,
      height: 400,
      child: ClipRRect(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: CachedNetworkImage(
                imageUrl: blog.cover ?? '',
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (ctx, url, s) {
                  return Center(
                    child: Text('Error loading image',
                        style: TextStyle(fontSize: 20)),
                  );
                },
                imageBuilder: (ctx, image) {
                  return Image(
                    image: image,
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        blog.title!,
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
