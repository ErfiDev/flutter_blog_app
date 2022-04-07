import 'dart:convert';

import 'package:blog_app/src/blog_class.dart';
import 'package:blog_app/src/blog_tmp.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  late Future<List<Blog>> blogs;

  Future<List<Blog>> getBlogs() async {
    var url = Uri.parse('https://dev.to/api/articles');
    var res = await get(url);
    List<dynamic> data = json.decode(res.body);

    List<Blog> all = [];
    for (var b in data) {
      all.add(Blog.fromJson(b));
    }

    return all;
  }

  @override
  void initState() {
    super.initState();
    blogs = getBlogs();
  }

  @override
  Widget build(ctx) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Today Blogs',
          style: TextStyle(color: Colors.cyan),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.cyan),
        elevation: 0,
      ),
      body: FutureBuilder<List<Blog>>(
        builder: (ctx, snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data;
            print(data);
            return ListView.builder(
              itemCount: data?.length,
              itemBuilder: (ctx, index) {
                return BlogTmp(blog: data![index]);
              },
            );
          } else if (snapshot.hasError) {
            return Text('Error happend');
          }

          return Center(child: CircularProgressIndicator());
        },
        future: blogs,
      ),
    );
  }
}
