import 'package:flutter/material.dart';

class MoreGuide extends StatelessWidget {
  const MoreGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Stack(
                children: [
                  ClipRect(
                    child: SizedBox(
                      height: 220, // Đặt chiều cao mong muốn cho ảnh
                      child: Image.asset(
                        'assets/top.png',
                        width: 600,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: AppBar(
                      backgroundColor: Colors.white.withOpacity(0), // Độ trong suốt
                      elevation: 0, // Bỏ bóng cho AppBar
                      leading: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.black),
                        onPressed: () => Navigator.of(context).pop(),
                      ),      
                      centerTitle: true,
                    ),
                  ),
                  const Positioned(
                    bottom: 55,
                    left: 30,
                    child: Text(
                      'Many Travelers are finding a \n local Guide in Danang',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -5,
                    left: 20,
                    right: 20,
                    child: SizedBox(
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Hi, where do you want to guide?",
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // Thẻ thông tin thứ nhất
            _buildGuideCard('assets/guide1.png', 'Yoo Jin', 'From Korea',
                'Finding a Guide', 'Jan 30, 2020', 'Da Nang, Viet Nam'),
            // Thẻ thông tin thứ hai
            _buildGuideCard('assets/guide2.png', 'Jon Mark', 'From Spain',
                'Finding a Guide', 'Jan 30, 2020', 'Da Nang, Viet Nam'),
            // Thẻ thông tin thứ ba
            _buildGuideCard('assets/guide3.png', 'Lynd Nguyen', 'From US',
                'Finding a Guide', 'Jan 30, 2020', 'Da Nang, Viet Nam'),
            // Thẻ thông tin thứ tư
            _buildGuideCard('assets/guide4.png', 'Patrick', 'From Italy',
                'Finding a Guide', 'Jan 30, 2020', 'Da Nang, Viet Nam'),
            _buildGuideCard('assets/guide2.png', 'Jon Mark', 'From Spain',
                'Finding a Guide', 'Jan 30, 2020', 'Da Nang, Viet Nam'),
            _buildGuideCard('assets/guide3.png', 'Lynd Nguyen', 'From US',
                'Finding a Guide', 'Jan 30, 2020', 'Da Nang, Viet Nam'),
          ],
        ),
      ),
    );
  }

  Widget _buildGuideCard(String imagePath, String name, String from,
      String guideStatus, String date, String location) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SizedBox(
        width: 550,
        height: 150,
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imagePath,
                    width: 130,
                    height: 130,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            from,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        guideStatus,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        date,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        location,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
