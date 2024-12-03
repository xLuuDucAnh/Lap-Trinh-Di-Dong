import 'package:flutter/material.dart';
import 'package:scr1/main.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String? _selectedRole; // Biến lưu trữ giá trị của radio button được chọn

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Phần màu xanh với đường cong lõm vào và các hình ảnh
            Stack(
              children: [
                ClipPath(
                  clipper: BottomCurveClipper(),
                  child: Container(
                    height: 250,
                    color: const Color.fromARGB(255, 0, 206, 166),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 40,
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/Group (2).png',
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 110,
                  right: 85,
                  child: Image.asset(
                    'assets/Vector 6.png',
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 10,
                  child: Image.asset(
                    'assets/Vector.png',
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 60, top: 5),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 30),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Radio<String>(
                        value: 'Traveler',
                        groupValue: _selectedRole,
                        activeColor: const Color.fromARGB(255, 0, 206, 166),
                        onChanged: (String? value) {
                          setState(() {
                            _selectedRole = value;
                          });
                        },
                      ),
                      const Text(
                        "Traveler",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(197, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 80),
                  Row(
                    children: [
                      Radio<String>(
                        value: 'Guide',
                        groupValue: _selectedRole,
                        activeColor: const Color.fromARGB(255, 0, 206, 166),
                        onChanged: (String? value) {
                          setState(() {
                            _selectedRole = value;
                          });
                        },
                      ),
                      const Text(
                        "Guide",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(197, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Hiển thị form đăng ký nếu một radio button được chọn
            Visibility(
              visible: _selectedRole != null,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "First Name",
                                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 10),
                              TextField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Last Name",
                                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 10),
                              TextField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Email",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText:"Type Email",
                        border: UnderlineInputBorder()
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Password",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText:"Type Password",
                        border: UnderlineInputBorder()
                      ),
                      
                    ),
                    const Text(
                      "Password has more than 6 letters",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromARGB(93, 0, 0, 0)),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Confirm Password",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(border: UnderlineInputBorder()),
                    ),
                    const Center(
                      child: Text(
                        "By Signing Up, you agree to our Term & Conditions"
                      ),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          // Điều hướng sang SignInPage khi nút Sign Up được nhấn
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignInScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 0, 206, 166),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "SIGN UP",
                          style: TextStyle(fontSize: 14, color: Colors.white),
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

// Custom Clipper để tạo hiệu ứng đường cong
class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstControlPoint = Offset(size.width / 2, size.height - 150);
    var firstEndPoint = Offset(size.width, size.height - 50);

    path.quadraticBezierTo(
        firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width, 0.0);
    path.lineTo(0.0, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
