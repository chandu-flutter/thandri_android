import 'package:flutter/material.dart';
import 'package:thandri_sannidhi/contact.dart';
import 'package:thandri_sannidhi/events.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:lottie/lottie.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> _launchUrl(String url) async {
      final Uri uri = Uri(scheme: "https", host: url);
      if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
        throw "Cannot launch url";
      }
    }

    return Drawer(
      backgroundColor: const Color.fromARGB(255, 30, 36, 40),
      elevation: 0,
      child: ListView(
        children: [
          const DrawerHeader(
            child: Center(
              child: Column(
                children: [
                  Image(
                    image: AssetImage('images/logo.png'),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.event,
              size: 20,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            title: const Text(
              "Events",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const EventCalendar();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.phone,
              size: 20,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            title: const Text(
              "Contact",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ContactScreen();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.policy,
              size: 20,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            title: const Text(
              "Privacy policy ",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ContactScreen();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.control_point_duplicate,
              size: 20,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            title: const Text(
              "Terms & conditions ",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ContactScreen();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.redo_outlined,
              size: 20,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            title: const Text(
              "Refund management ",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ContactScreen();
                  },
                ),
              );
            },
          ),
          Lottie.asset("animations/sw_le.json"),
        ],
      ),
    );
  }
}
