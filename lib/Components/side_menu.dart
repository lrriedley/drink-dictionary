import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black.withOpacity(.8),
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.8),
            ),
            accountName: const Text('John Doe'),
            accountEmail: const Text('john.doe@example.com'),
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
            title: const Text('Item 1', style: TextStyle(color: Colors.white)),
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
                minimumSize: const Size(250, 35), // increase width of button
                backgroundColor: const Color.fromARGB(255, 255, 0, 225),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('Log Out'),
            ),
          ),
        ],
      ),
    );
  }
}
