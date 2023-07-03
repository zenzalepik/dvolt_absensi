import 'package:dyvolt_employee/pages/home_page.dart';
import 'package:dyvolt_employee/pages/profile_page.dart';
import 'package:dyvolt_employee/pages/reimburs_page.dart';
import 'package:dyvolt_employee/pages/work_page.dart';
import 'package:dyvolt_employee/utils/colors.dart';
import 'package:dyvolt_employee/utils/icons.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 56,
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: const CustomIcon(
              iconName: 'icon_home',
              color: AppColors.blackColor,
              size: 24,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          IconButton(
            icon: const CustomIcon(
              iconName: 'icon_work',
              color: AppColors.blackColor,
              size: 24,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WorkPage()),
              );
            },
          ),
          const SizedBox(width: 48), // Mengisi ruang untuk notch
          IconButton(
            icon: const CustomIcon(
              iconName: 'icon_wallet',
              color: AppColors.blackColor,
              size: 24,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ReimbursPage()),
              );
            },
          ),
          IconButton(
            icon: const CustomIcon(
              iconName: 'icon_profile',
              color: AppColors.blackColor,
              size: 24,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
