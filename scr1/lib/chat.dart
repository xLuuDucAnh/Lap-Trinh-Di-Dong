import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hình ảnh với kích thước cố định
            Center(
              child: SizedBox(
                width: 600, // Chiều rộng cố định
                height: 200, // Chiều cao cố định
                child: Stack(
                  children: [
                    // Hình ảnh
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10), // Bo góc hình ảnh nếu cần
                      child: Image.asset(
                        'assets/Mask Group (1).png',
                        width: 600,
                        height: 200,
                        fit: BoxFit.cover, // Ảnh sẽ bao phủ toàn bộ vùng
                      ),
                    ),
                    // Chữ đè lên ảnh
                    const Positioned(
                      bottom: 10, // Vị trí cách đáy ảnh 10px
                      left: 20, // Vị trí cách trái ảnh 20px
                      child: Text(
                        'Chat', // Nội dung chữ
                        style: TextStyle(
                          fontSize: 38, // Kích thước chữ
                          fontWeight: FontWeight.bold, // Đậm chữ
                          color: Colors.white, // Màu chữ
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10), // Khoảng cách giữa hình ảnh và thanh tìm kiếm

            // Thanh tìm kiếm ở dưới hình ảnh
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20), // Khoảng cách trái phải
              height: 50,
              width: 550,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Search chat",
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),
            const SizedBox(height: 10), // Khoảng cách giữa thanh tìm kiếm và nội dung khác
            Center(
              child: Container(
                width: 550, // Chiều dài cố định của thẻ
                height: 100, // Chiều cao cố định của thẻ (tùy chỉnh theo nhu cầu)
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 4), // Đổ bóng phía dưới thẻ
                    ),
                  ],
                ),
                child: const Row(
                  children: [
                    // Avatar bên trái
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: CircleAvatar(
                        radius: 35, // Kích thước avatar
                        backgroundImage: AssetImage('assets/guide1.png'), // Đường dẫn hình ảnh avatar
                      ),
                    ),
                    // Text bên phải
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 7),
                            Text(
                              'Yoo Jin',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'It’s a beautiful place',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5), // Khoảng cách giữa thanh tìm kiếm và nội dung khác
            Center(
              child: Container(
                width: 550, // Chiều dài cố định của thẻ
                height: 100, // Chiều cao cố định của thẻ (tùy chỉnh theo nhu cầu)
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 4), // Đổ bóng phía dưới thẻ
                    ),
                  ],
                ),
                child: const Row(
                  children: [
                    // Avatar bên trái
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: CircleAvatar(
                        radius: 35, // Kích thước avatar
                        backgroundImage: AssetImage('assets/guide9.png'), // Đường dẫn hình ảnh avatar
                      ),
                    ),
                    // Text bên phải
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 7),
                            Text(
                              'Jonathan P',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'We can start at 8am',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5), // Khoảng cách giữa thanh tìm kiếm và nội dung khác
            Center(
              child: Container(
                width: 550, // Chiều dài cố định của thẻ
                height: 100, // Chiều cao cố định của thẻ (tùy chỉnh theo nhu cầu)
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 4), // Đổ bóng phía dưới thẻ
                    ),
                  ],
                ),
                child: const Row(
                  children: [
                    // Avatar bên trái
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: CircleAvatar(
                        radius: 35, // Kích thước avatar
                        backgroundImage: AssetImage('assets/guide10.png'), // Đường dẫn hình ảnh avatar
                      ),
                    ),
                    // Text bên phải
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 7),
                            Text(
                              'Myung Dae',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'See you tomorrow',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
