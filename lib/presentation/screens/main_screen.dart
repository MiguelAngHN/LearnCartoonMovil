import 'package:bottom_navigation_app/presentation/views/homes_view.dart';
import 'package:bottom_navigation_app/presentation/views/users_view.dart';
import 'package:bottom_navigation_app/presentation/views/seccions_view.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colors = Color.fromARGB(255, 58, 166, 255);

    final screens = [const HomesView(), const UsersView(), const SeccionsView()];

    return Scaffold(
      
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            activeIcon: const Icon(Icons.home),
            label: 'Inicio',
            backgroundColor: colors,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_outlined),
            activeIcon: const Icon(Icons.person_3),
            label: 'Usuario',
            backgroundColor: colors,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.grid_view_sharp),
            activeIcon: const Icon(Icons.grid_view_outlined),
            label: 'Secciones',
            backgroundColor: colors,
          ),
        ],
      ),
    );
  }
}
