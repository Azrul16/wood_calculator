import 'package:flutter/material.dart';

import 'screens/drawer/page1.dart';
import 'screens/drawer/page2.dart';
import 'screens/drawer/page3.dart';
import 'screens/plane_wood.dart';
import 'screens/rounded_multiple.dart';
import 'screens/rounded_single.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> boxes = [
    {
      'title': 'Plane Wood',
      'backgroundImage': 'assets/box1.jpg',
      'iconImage': 'assets/icon1.png',
      'navigateTo': '/plane_wood', // Path for navigation
    },
    {
      'title': 'Rounded Wood (Single)',
      'backgroundImage': 'assets/box2.jpg',
      'iconImage': 'assets/icon2.png',
      'navigateTo': '/rounded_single', // Path for navigation
    },
    {
      'title': 'Rounded Wood (Multiple)',
      'backgroundImage': 'assets/box3.jpg',
      'iconImage': 'assets/icon3.png',
      'navigateTo': '/rounded_multiple', // Path for navigation
    },
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        backgroundColor: Colors.amber,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu), // 3-bar menu icon
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Open drawer on click
            },
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Transform.translate(
                offset: Offset(0, 0),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/logo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              title: Container(
                decoration: BoxDecoration(
                  color: Colors.amber[200],
                  borderRadius: BorderRadius.circular(25), // Oval shape
                  boxShadow: [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // shadow position
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                child: Text(
                  'Today\'s Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page1()),
                );
              },
            ),
            ListTile(
              title: Container(
                decoration: BoxDecoration(
                  color: Colors.amber[200],
                  borderRadius: BorderRadius.circular(25), // Oval shape
                  boxShadow: [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // shadow position
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                child: Text(
                  'Monthly account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );
              },
            ),
            ListTile(
              title: Container(
                decoration: BoxDecoration(
                  color: Colors.amber[200],
                  borderRadius: BorderRadius.circular(25), // Oval shape
                  boxShadow: [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // shadow position
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                child: Text(
                  'Backup',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page3()),
                );
              },
            ),
            // ListTile(
            //   title: Container(
            //     decoration: BoxDecoration(
            //       color: Colors.amber[200],
            //       borderRadius: BorderRadius.circular(25), // Oval shape
            //       boxShadow: [
            //         BoxShadow(
            //           // ignore: deprecated_member_use
            //           color: Colors.grey.withOpacity(0.5),
            //           spreadRadius: 2,
            //           blurRadius: 5,
            //           offset: Offset(0, 3), // shadow position
            //         ),
            //       ],
            //     ),
            //     padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            //     child: Text(
            //       'Page 4',
            //       textAlign: TextAlign.center,
            //       style: TextStyle(
            //         fontStyle: FontStyle.italic,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => Page4()),
            //     );
            //   },
            // ),
            // ListTile(
            //   title: Container(
            //     decoration: BoxDecoration(
            //       color: Colors.amber[200],
            //       borderRadius: BorderRadius.circular(25), // Oval shape
            //       boxShadow: [
            //         BoxShadow(
            //           // ignore: deprecated_member_use
            //           color: Colors.grey.withOpacity(0.5),
            //           spreadRadius: 2,
            //           blurRadius: 5,
            //           offset: Offset(0, 3), // shadow position
            //         ),
            //       ],
            //     ),
            //     padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            //     child: Text(
            //       'Page 5',
            //       textAlign: TextAlign.center,
            //       style: TextStyle(
            //         fontStyle: FontStyle.italic,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => Page5()),
            //     );
            //   },
            // ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Outer padding for the grid
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, // One box per row
            mainAxisSpacing: 16, // Space between rows
            childAspectRatio: 1 / 0.39, // Height-to-width ratio
          ),
          itemCount: boxes.length,
          itemBuilder: (context, index) {
            final box = boxes[index];
            return GestureDetector(
              onTap: () {
                // Navigate to the respective page based on the box clicked
                if (box['navigateTo'] == '/plane_wood') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlaneWoodPage(),
                    ),
                  );
                } else if (box['navigateTo'] == '/rounded_single') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RoundedSinglePage(),
                    ),
                  );
                } else if (box['navigateTo'] == '/rounded_multiple') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RoundedMultiplePage(),
                    ),
                  );
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors
                      .yellow.shade100, // Light yellow background for the boxes
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 4,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    // Background image with reduced opacity
                    Opacity(
                      opacity: 0.4, // Adjust opacity for watermark effect
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          box['backgroundImage']!,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                    ),
                    // Positioned block for text and logo
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title block
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            box['title']!,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Dark brown text
                              shadows: [
                                Shadow(
                                  color: Colors.white70,
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Logo image block aligned to the right
                    Positioned(
                      right: 16, // Aligning the logo to the right
                      bottom: 16,
                      child: Image.asset(
                        box['iconImage']!,
                        width: 100, // Doubled the size
                        height: 100, // Doubled the size
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
