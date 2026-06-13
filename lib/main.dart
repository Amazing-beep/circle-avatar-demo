import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Circle Avatar Demo',
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF5FA),

      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.pink,

        title: const Text(
          "My Profile",

          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),

          padding: const EdgeInsets.all(28),

          decoration: BoxDecoration(
            color: Colors.white,

            borderRadius: BorderRadius.circular(35),

            boxShadow: [
              BoxShadow(
                color: Colors.pink.withOpacity(0.15),
                blurRadius: 30,
                spreadRadius: 5,
                offset: const Offset(0, 10),
              )
            ],
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,

            children: [

              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,

                  border: Border.all(
                    color: Colors.white,
                    width: 5,
                  ),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink.withOpacity(0.25),
                      blurRadius: 18,
                    )
                  ],
                ),

                child: CircleAvatar(

                  // PROPERTY 1
                  radius: 75,

                  // PROPERTY 2
                  backgroundColor:
                  Colors.pink.shade100,

                  // PROPERTY 3
                  backgroundImage:
                  const AssetImage(
                    "assets/myprofile.jpeg",
                  ),
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                "Amazing Mkhonta",

                style: TextStyle(
                  fontSize: 30,

                  fontWeight:
                  FontWeight.bold,

                  color: Color(
                    0xff2B2B2B,
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Text(
                "Software Engineer • Creator",

                style: TextStyle(
                  color: Colors.grey.shade600,

                  fontSize: 16,
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,

                children: [

                  buildSkill(
                    Icons.code,
                    "Flutter",
                  ),

                  buildSkill(
                    Icons.palette,
                    "Design",
                  ),

                  buildSkill(
                    Icons.camera_alt,
                    "Creative",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSkill(
      IconData icon,
      String title,
      ) {
    return Column(
      children: [

        CircleAvatar(
          radius: 22,

          backgroundColor:
          Colors.pink.shade50,

          child: Icon(
            icon,

            color: Colors.pink,

            size: 20,
          ),
        ),

        const SizedBox(
          height: 10,
        ),

        Text(
          title,

          style:
          const TextStyle(
            fontWeight:
            FontWeight.w500,
          ),
        ),
      ],
    );
  }
}