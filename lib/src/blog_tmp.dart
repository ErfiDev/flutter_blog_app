import 'package:blog_app/src/blog_class.dart';
import 'package:blog_app/src/blog_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BlogTmp extends StatelessWidget {
  final Blog blog;

  BlogTmp({Key? key, required this.blog}) : super(key: key);

  @override
  Widget build(ctx) {
    return Container(
      margin: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      width: double.infinity,
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(4)),
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
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: RichText(
                      overflow: TextOverflow.clip,
                      text: TextSpan(
                        text: blog.title!,
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        mouseCursor: SystemMouseCursors.click,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(ctx).push(
                              MaterialPageRoute(builder: (ctx) {
                                return BlogPage(blog: blog);
                              }),
                            );
                          },
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'From: ${blog.author}',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
