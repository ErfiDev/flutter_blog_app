import 'package:blog_app/src/blog_class.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  final Blog blog;

  const BlogPage({Key? key, required this.blog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog page'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 250,
              child: CachedNetworkImage(
                imageUrl: blog.socialImage!,
                errorWidget: (ctx, f, s) => Text('Error'),
                placeholder: (ctx, f) => CircularProgressIndicator(),
                imageBuilder: (ctx, i) {
                  return Image(image: i, fit: BoxFit.contain);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                blog.title!,
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                blog.description!,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Divider(
                thickness: 2,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'From: ${blog.author!}',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
