class Member {
  String name;
  String avatar;
  DateTime birthDay;
  String phone;
  String email;
  Gender genger;
  List<Post> posts;

  Member({
    required this.name,
    required this.avatar,
    required this.birthDay,
    required this.email,
    required this.genger,
    required this.phone,
    required this.posts,
  });
  void addPost(Post post) {
    posts.add(post);
  }
}

enum Gender { male, female, other }

class Post {
  String content;
  List<String> image;
  Member author;

  List<Comment> comments;

  Post({
    required this.content,
    required this.image,
    required this.author,
    required this.comments,
  });
  void addComment(Comment comment) {
    comments.add(comment);
  }
}

class Comment {
  String content;
  Member author;
  Comment({required this.content, required this.author});
}

void main() {
  Member member1 = Member(
      name: "Nguyen Van A",
      avatar: "deptrai.jpg",
      birthDay: DateTime(2003, 5, 12),
      email: 'nguyena@gmail.com',
      genger: Gender.male,
      phone: "087661273",
      posts: []);

  Member member2 = Member(
      name: "sndfjk",
      avatar: "jsjbdj",
      birthDay: DateTime(2000, 4, 12),
      email: "shada@gmail.com",
      genger: Gender.male,
      phone: "09812774",
      posts: []);

  Post post1 = Post(
      content: "Đào thải nhân sự",
      image: ["image1.jpg", "image2.jpg"],
      author: member1,
      comments: []);

  member1.addPost(post1);

  Comment comment1 = Comment(content: "Nhảy việc thôi", author: member2);
  post1.addComment(comment1);
  print(post1.content);
  print(post1.author);
}
