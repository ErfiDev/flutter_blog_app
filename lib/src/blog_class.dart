class Blog {
  final String? title;
  final String? cover;
  final String? author;
  final int? id;
  final String? description;
  final String? socialImage;

  Blog(
      {this.title,
      this.cover,
      this.author,
      this.id,
      this.description,
      this.socialImage});

  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      title: json['title'],
      description: json['description'],
      author: json['user']['name'],
      cover: json['cover_image'],
      id: json['id'],
      socialImage: json['social_image'],
    );
  }
}
