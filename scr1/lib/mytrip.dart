import 'package:flutter/material.dart';

class MyTrip extends StatelessWidget {
  const MyTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  SizedBox(
                    width: 600,
                    height: 200,
                    child: Image.asset(
                      'assets/Mask Group (1).png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Positioned(
                    bottom: 20,
                    left: 25,
                    child: Text(
                      'My Trips',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            DefaultTabController(
              length: 4,
              child: Column(
                children: [
                  const SizedBox(
                    width: 600,
                    child: TabBar(
                      isScrollable: true,
                      tabs: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Tab(text: 'Current Trips'),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Tab(text: 'Next Trips'),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Tab(text: 'Past Trips'),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Tab(text: 'Wish List'),
                        ),
                      ],
                      indicator: BoxDecoration(
                        color: Color.fromARGB(255, 0, 206, 166),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 600, // Increased height to accommodate all content
                    child: TabBarView(
                      children: [
                        // Current Trips Tab
                        Center(
                          child: SizedBox(
                            width: 530,
                            height: 380,
                            child: Stack(
                              children: [
                                Card(
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/tour4.jpg',
                                            width: 530,
                                            height: 180,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 10),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Dragon Bridge Trip',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(height: 5),
                                                Text(
                                                  'Jan 30, 2020',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                SizedBox(height: 5),
                                                Text(
                                                  '13:00 - 15:00',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                SizedBox(height: 5),
                                                Text(
                                                  'Yoo Yin',
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
                                const Positioned(
                                  top: 210,
                                  right: 30,
                                  child: CircleAvatar(
                                    radius: 45,
                                    backgroundImage: AssetImage('assets/guide1.png'),
                                  ),
                                ),
                                Positioned(
                                  bottom: 20,
                                  left: 20,
                                  child: OutlinedButton(
                                    onPressed: () {
                                      print("Outlined Button Pressed");
                                    },
                                    style: OutlinedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                      side: const BorderSide(color: Color.fromARGB(255, 0, 206, 166), width: 2),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: const Text(
                                      "Detail",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromARGB(255, 0, 206, 166),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                        // Next Trips Tab (mostly same as before)
                        Center(
                          child: SizedBox(
                            width: 530,
                            height: 380,
                            child: Stack(
                              children: [
                                Card(
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/tour5.png',
                                            width: 530,
                                            height: 180,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 10),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Ho Guom Trip',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(height: 5),
                                                Text(
                                                  'Feb 2, 2020',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                SizedBox(height: 5),
                                                Text(
                                                  '8:00 - 10:00',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                SizedBox(height: 5),
                                                Text(
                                                  'Jonathan P',
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
                                const Positioned(
                                  top: 210,
                                  right: 30,
                                  child: CircleAvatar(
                                    radius: 45,
                                    backgroundImage: AssetImage('assets/guide9.png'),
                                  ),
                                ),
                                Positioned(
                                  bottom: 20,
                                  left: 20,
                                  child: Row(
                                    children: [
                                      OutlinedButton(
                                        onPressed: () {
                                          print("Detail Button Pressed");
                                        },
                                        style: OutlinedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                          side: const BorderSide(color: Color.fromARGB(255, 0, 206, 166), width: 2),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                        ),
                                        child: const Text(
                                          "Detail",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(255, 0, 206, 166),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 122),
                                      OutlinedButton(
                                        onPressed: () {
                                          print("Chat Button Pressed");
                                        },
                                        style: OutlinedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                          side: const BorderSide(color: Color.fromARGB(255, 0, 206, 166), width: 2),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                        ),
                                        child: const Text(
                                          "Chat",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(255, 0, 206, 166),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 122),
                                      OutlinedButton(
                                        onPressed: () {
                                          print("Start Button Pressed");
                                        },
                                        style: OutlinedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                          side: const BorderSide(color: Color.fromARGB(255, 0, 206, 166), width: 2),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                        ),
                                        child: const Text(
                                          "Start",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(255, 0, 206, 166),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                        // Past Trips Tab
                        Center(
                          child: SizedBox(
                            width: 530,
                            height: 380, // Adjusted height
                            child: Stack(
                              children: [
                                Card(
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/tour8.jpg',
                                            width: 530,
                                            height: 180,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 10),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Quoc Tu Giam Temple',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(height: 5),
                                                Text(
                                                  'Feb 2, 2020',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                SizedBox(height: 5),
                                                Text(
                                                  '8:00 - 10:00',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                SizedBox(height: 5),
                                                Text(
                                                  'Stepne',
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
                                const Positioned(
                                  top: 210,
                                  right: 30,
                                  child: CircleAvatar(
                                    radius: 45,
                                    backgroundImage: AssetImage('assets/guide10.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                        // Wish List Tab
                        Center(
                          child: SizedBox(
                            width: 530,
                            height: 380, // Adjusted height
                            child: Stack(
                              children: [
                                Card(
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/tour3.jpg',
                                            width: 530,
                                            height: 180,
                                            fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ha Noi - Ha Long Bay',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              'Jan 30, 2020',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              '3 days',
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
                            // Positioned Text at the top-right corner
                            const Positioned(
                              bottom: 40,  // Position from the top of the card
                              right: 30, // Position from the right of the card
                              child: Text(
                                '300.00',  // Replace with the text you want
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(255, 0, 206, 166),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
