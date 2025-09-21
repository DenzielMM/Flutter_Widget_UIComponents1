import 'package:flutter/material.dart';

void main() => runApp(const TabBarDemo());

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Colorful Tabs',
      theme: ThemeData(useMaterial3: true),
      home: const DefaultTabController(
        length: 10,
        child: Scaffold(
          appBar: MyAppBar(),
          body: TabBarContent(),
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 48);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Colorful TabBar'),
      backgroundColor: Colors.teal,
      bottom: const TabBar(
        isScrollable: true,
        indicatorColor: Colors.white,
        tabs: [
          const Tab(icon: Icon(Icons.home, color: Colors.amber)),
          const Tab(icon: Icon(Icons.search, color: Colors.deepPurple)),
          const Tab(icon: Icon(Icons.settings, color: Colors.indigo)),
          const Tab(icon: Icon(Icons.favorite, color: Colors.pink)),
          const Tab(icon: Icon(Icons.alarm, color: Colors.orange)),
          const Tab(icon: Icon(Icons.map, color: Colors.green)),
          const Tab(icon: Icon(Icons.shopping_cart, color: Colors.blue)),
          const Tab(icon: Icon(Icons.phone, color: Colors.tealAccent)),
          const Tab(icon: Icon(Icons.person, color: Colors.brown)),
          const Tab(icon: Icon(Icons.info, color: Colors.lime)),
        ],
      ),
    );
  }
}

class TabBarContent extends StatelessWidget {
  const TabBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        _Page(icon: Icons.home, color: Colors.amber, label: 'Home'),
        _Page(icon: Icons.search, color: Colors.deepPurple, label: 'Search'),
        _Page(icon: Icons.settings, color: Colors.indigo, label: 'Settings'),
        _Page(icon: Icons.favorite, color: Colors.pink, label: 'Favorites'),
        _Page(icon: Icons.alarm, color: Colors.orange, label: 'Alarms'),
        _Page(icon: Icons.map, color: Colors.green, label: 'Map'),
        _Page(icon: Icons.shopping_cart, color: Colors.blue, label: 'Cart'),
        _Page(icon: Icons.phone, color: Colors.tealAccent, label: 'Calls'),
        _Page(icon: Icons.person, color: Colors.brown, label: 'Profile'),
        _Page(icon: Icons.info, color: Colors.lime, label: 'Info'),
      ],
    );
  }
}

class _Page extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;
  const _Page({super.key, required this.icon, required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Icon(icon, size: 80, color: color),
        const SizedBox(height: 12),
        Text(label, style: TextStyle(fontSize: 18, color: Colors.grey[800])),
      ]),
    );
  }
}
