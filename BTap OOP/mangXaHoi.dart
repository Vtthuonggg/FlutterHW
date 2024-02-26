class Member {
  String name;
  String avatar;
  DateTime birthDay;
  String phone;
  String email;
  String genger;

  Member(this.avatar, this.birthDay, this.email, this.genger, this.name, this.phone);
}
class Post{
  Member author;
  String content;
  List<String> images;
  List<Comment> comments;

  Post(this.author, this.content, {this.images = const[], this.comments = const[]});
}

class Comment{
  String content;
  Member commenter;

  Comment(this.content, this.commenter);
}

void main() {
  Member member1 = Member('avatar.jpg', DateTime(2000,4,30), 'abscn@gmail.com', "Female", "Nguyen Thi A", '0982347');
  Member member2 = Member('aksjd.jpg', DateTime(2001,7,30), "skdfnsjkd@icloud.com", "Male", "Nguyen Van B", "02198346");

var post1 = Post(member1, "Đào thải nhân sự", comments: []);
var post2 = Post(member2, "Bữa trưa hôm nay có gì", comments: []);

var comment1 = Comment("Tuyệt quá!", member2);
var comment2 = Comment("Tôi thích cá rán", member1);

post1.comments.add(comment1);
post2.comments.add(comment2);

print('Post 1:');
print('Tác giả: ${post1.author.name}');
print('Chủ đề: ${post1.content }');
print('Bình luận:');
print('- ${comment1.commenter.name}: ${comment1.content}');

print('------------------------------------- ');

print('Post 2:');
print('Tác giả: ${post2.author.name}');
print('Chủ đề: ${post2.content }');
print('Bình luận:');
print('- ${comment2.commenter.name}: ${comment2.content}');


}
