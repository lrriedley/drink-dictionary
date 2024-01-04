import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black.withOpacity(.7),
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
          Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.7),
                ),
                accountName: Text(
                  'John Doe',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                accountEmail: Text(
                  'john.doe@example.com',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                currentAccountPicture: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 255, 0, 225),
                    ),
                  ),
                ),
              ),
              ListTile(
                title:
                    const Text('Item 1', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Handle item tap
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text(
                  'Item 2',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Handle item tap
                  Navigator.pop(context);
                },
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(18),
                child: ElevatedButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        const Size(250, 35), // increase width of button
                    backgroundColor: const Color.fromARGB(255, 255, 0, 225),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Log Out',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        ],
      ),
    );
  }
}
