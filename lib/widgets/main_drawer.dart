import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectMeal});
  final void Function(String identifier) onSelectMeal;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.amber, Colors.red],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
            child: Row(
              children: [
                Icon(Icons.fastfood, size: 48, color: Colors.blueAccent),
                SizedBox(
                  width: 12.0,
                ),
                Text('Cooking!'),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.restaurant,
              size: 28,
            ),
            title: const Text('Meals'),
            onTap: () {
              onSelectMeal('meals');
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings, size: 28),
            title: const Text('Filters'),
            onTap: () {
              onSelectMeal('filters');
            },
          ),
        ],
      ),
    );
  }
}
