import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Avatar(
              name: "Thưởng",
              avatarUrl:
                  "https://www.wfla.com/wp-content/uploads/sites/71/2023/05/GettyImages-1389862392.jpg?w=2560&h=1440&crop=1",
              isUpload: true,
            ),
            SizedBox(height: 20),
            Avatar(
              name: "ABC",
              isUpload: true,
            ),
            SizedBox(height: 20),
            Avatar(
              name: "MNHSA",
              isUpload: true,
            ),
          ],
        ),
      ),
    ),
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
    return GestureDetector(
      onTap: isUpload ? () {} : null,
      child: Stack(children: [
        _buildAvatar(),
        if (isUpload) _buildUploadIcon(),
      ]),
    );
  }

  Widget _buildAvatar() {
    if (avatarUrl != null) {
      return _buildNetworkAvatar();
    } else {
      return _buildTextAvatar();
    }
  }

  Widget _buildNetworkAvatar() {
    return CircleAvatar(
      backgroundImage: NetworkImage(avatarUrl!),
      radius: 40,
      onBackgroundImageError: (exception, stackTrace) => _buildTextAvatar,
    );
  }

  Widget _buildTextAvatar() {
    final String initials = name.substring(0, 1).toUpperCase();
    return CircleAvatar(
      radius: 40,
      child: Text(
        initials,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _buildUploadIcon() {
    return Positioned(
        bottom: 0,
        right: 0,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(4),
          child: const Icon(
            Icons.upload,
            size: 16,
            color: Colors.red,
          ),
        ));
  }
}
