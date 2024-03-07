import 'package:flutter/material.dart';

void main() {
  runApp(const Avatar(
    name: '',
  ));
}

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
    required this.name,
    this.avatarUrl,
    this.isUpload = false,
  });

  final String name;
  final String? avatarUrl;
  final bool isUpload;

  @override
  Widget build(BuildContext context) {
    final initials = name.isNotEmpty ? name[0].toUpperCase() : '';

    return Stack(
      children: [
        // Hiển thị ảnh đại diện
        if (avatarUrl != null)
          CircleAvatar(
            backgroundImage: NetworkImage(avatarUrl!),
          )
        else
          CircleAvatar(
            child: Text(initials),
          ),

        // Hiển thị biểu tượng tải lên
        if (isUpload)
          const Positioned(
            bottom: 0,
            right: 0,
            child: Icon(Icons.upload),
          ),
      ],
    );
  }
}
