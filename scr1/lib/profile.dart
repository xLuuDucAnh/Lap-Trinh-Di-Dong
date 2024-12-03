import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Căn lề trái cho toàn bộ column
          children: [
            // Ảnh bìa
            Stack(
              clipBehavior: Clip.none, // Đảm bảo các phần nằm ngoài Stack vẫn hiển thị
              children: [
                Align(
                  alignment: Alignment.center, // Đảm bảo ảnh bìa luôn căn giữa
                  child: Container(
                    width: 600, // Chiều rộng cố định
                    height: 200, // Chiều cao cố định
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/cover.png'), // Đường dẫn tới ảnh bìa
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                // Vị trí ảnh đại diện
                const Positioned(
                  bottom: -65, // Điều chỉnh khoảng cách ảnh đại diện so với ảnh bìa
                  left: 20, // Căn lề trái cho ảnh đại diện
                  child: CircleAvatar(
                    radius: 50, // Kích thước avatar
                    backgroundColor: Colors.white, // Màu viền trắng quanh ảnh
                    child: CircleAvatar(
                      radius: 48, // Kích thước thực tế của ảnh đại diện
                      backgroundImage: AssetImage('assets/guide5.jpg'), // Ảnh đại diện
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10), // Khoảng cách giữa ảnh đại diện và nội dung bên dưới
            // Tên người dùng
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 140), // Thêm padding để tạo khoảng cách với lề
              child: Text(
                'Tuan Tran', // Tên người dùng
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Thông tin thêm
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 140), // Thêm padding để tạo khoảng cách với lề
              child: Text(
                '127 reviews', // Mô tả ngắn gọn
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 40), // Khoảng cách giữa ảnh đại diện và nội dung bên dưới
            
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20), // Thêm padding để tạo khoảng cách với lề
              child: Text(
                'Language', 
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20), // Thêm padding để tạo khoảng cách với lề
              child: Text(
                'Vietnamese      English      Korean', // Mô tả ngắn gọn
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20), // Thêm padding để tạo khoảng cách với lề
              child: Text(
                'Introduction', 
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20), // Thêm padding để tạo khoảng cách với lề
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", // Mô tả ngắn gọn
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20), // Thêm padding để tạo khoảng cách với lề
              child: Text(
                'Fee', 
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Bảng giá
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Table(
                border: TableBorder.all(color: Colors.grey, width: 1),
                children: const [
                  // Dòng đầu tiên
                  TableRow(
                    children: [
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('1 - 3 Travelers', textAlign: TextAlign.center),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('\$10/ hour', textAlign: TextAlign.center),
                        ),
                      ),
                    ],
                  ),
                  // Dòng thứ hai
                  TableRow(
                    children: [
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('4 - 6 Travelers', textAlign: TextAlign.center),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('\$14/ hour', textAlign: TextAlign.center),
                        ),
                      ),
                    ],
                  ),
                  // Dòng thứ ba
                  TableRow(
                    children: [
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('7 - 9 Travelers', textAlign: TextAlign.center),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('\$17/ hour', textAlign: TextAlign.center),
                        ),
                      ),
                    ],
                  ),
                  // Dòng thứ tư
                  TableRow(
                    children: [
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('10 - 14 Travelers', textAlign: TextAlign.center),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('\$22/ hour', textAlign: TextAlign.center),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20), // Thêm padding để tạo khoảng cách với lề
              child: Text(
                'More Experiences', 
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Card(
              elevation: 4.0,
              child: Column(
                children: [
                  SizedBox(
                    height: 300,
                    child: Row(
                      children: [
                        // Ảnh lớn bên trái
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/tour9.jpg',
                                fit: BoxFit.cover,
                                height: double.infinity,
                              ),
                            ),
                          ),
                        ),
                        
                        // Container bên phải chứa 2 ảnh
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                // Ảnh trên
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/tour10.jpg',
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      ),
                                    ),
                                  ),
                                ),
                                
                                // Ảnh dưới  
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/tour11.jpg',
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      ),
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
                  const Align(
                    alignment: Alignment.centerLeft, // Có thể thay đổi: centerRight, bottomCenter,...
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '2 Hour Bicycle Tour exploring Hoian',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft, // Có thể thay đổi: centerRight, bottomCenter,...
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Hoian, Vietnam',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF00CEA6), // Fixed color
                        ),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Jan 25, 2020',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),     
                ],
              ),
            ),
            Card(
              elevation: 4.0,
              child: Column(
                children: [
                  SizedBox(
                    height: 300,
                    child: Row(
                      children: [
                        // Ảnh lớn bên trái
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/tour12.jpg',
                                fit: BoxFit.cover,
                                height: double.infinity,
                              ),
                            ),
                          ),
                        ),
                        
                        // Container bên phải chứa 2 ảnh
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                // Ảnh trên
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/tour13.jpg',
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      ),
                                    ),
                                  ),
                                ),
                                
                                // Ảnh dưới  
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/tour14.jpg',
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      ),
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
                  const Align(
                    alignment: Alignment.centerLeft, // Có thể thay đổi: centerRight, bottomCenter,...
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Food tour in Danang',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft, // Có thể thay đổi: centerRight, bottomCenter,...
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Danang, Vietnam',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF00CEA6), // Fixed color
                        ),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Jan 25, 2020',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),     
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20), // Thêm padding để tạo khoảng cách với lề
              child: Text(
                'Review', 
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Card(
              margin: EdgeInsets.all(10), // Khoảng cách xung quanh thẻ
              child: Padding(
                padding: EdgeInsets.all(10), // Khoảng cách trong thẻ
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Căn lề trái
                  children: [
                    // Hàng chứa avatar và tên
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center, // Căn giữa theo chiều dọc
                      children: [
                        // Avatar ở góc trái
                        CircleAvatar(
                          radius: 30, // Kích thước avatar
                          backgroundImage: AssetImage('assets/client1.png'), // Đường dẫn ảnh avatar
                        ),
                        SizedBox(width: 10), // Khoảng cách giữa avatar và tên
                        // Tên người dùng
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start, // Căn lề trái
                          children: [
                            Text(
                              'Pena Valdez', // Tên
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 5), // Khoảng cách giữa tên và thông tin phụ
                            Text(
                              'Jan 22, 2020', // Thông tin phụ
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10), // Khoảng cách giữa hàng trên và phần mô tả
                    // Nội dung mô tả bên dưới
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        height: 1.5, // Điều chỉnh khoảng cách dòng
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Card(
              margin: EdgeInsets.all(10), // Khoảng cách xung quanh thẻ
              child: Padding(
                padding: EdgeInsets.all(10), // Khoảng cách trong thẻ
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Căn lề trái
                  children: [
                    // Hàng chứa avatar và tên
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center, // Căn giữa theo chiều dọc
                      children: [
                        // Avatar ở góc trái
                        CircleAvatar(
                          radius: 30, // Kích thước avatar
                          backgroundImage: AssetImage('assets/client2.png'), // Đường dẫn ảnh avatar
                        ),
                        SizedBox(width: 10), // Khoảng cách giữa avatar và tên
                        // Tên người dùng
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start, // Căn lề trái
                          children: [
                            Text(
                              'Daehyun', // Tên
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 5), // Khoảng cách giữa tên và thông tin phụ
                            Text(
                              'Jan 22, 2020', // Thông tin phụ
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10), // Khoảng cách giữa hàng trên và phần mô tả
                    // Nội dung mô tả bên dưới
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        height: 1.5, // Điều chỉnh khoảng cách dòng
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Card(
              margin: EdgeInsets.all(10), // Khoảng cách xung quanh thẻ
              child: Padding(
                padding: EdgeInsets.all(10), // Khoảng cách trong thẻ
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Căn lề trái
                  children: [
                    // Hàng chứa avatar và tên
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center, // Căn giữa theo chiều dọc
                      children: [
                        // Avatar ở góc trái
                        CircleAvatar(
                          radius: 30, // Kích thước avatar
                          backgroundImage: AssetImage('assets/client3.png'), // Đường dẫn ảnh avatar
                        ),
                        SizedBox(width: 10), // Khoảng cách giữa avatar và tên
                        // Tên người dùng
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start, // Căn lề trái
                          children: [
                            Text(
                              'Burns Marks', // Tên
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 5), // Khoảng cách giữa tên và thông tin phụ
                            Text(
                              'Jan 22, 2020', // Thông tin phụ
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10), // Khoảng cách giữa hàng trên và phần mô tả
                    // Nội dung mô tả bên dưới
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        height: 1.5, // Điều chỉnh khoảng cách dòng
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
