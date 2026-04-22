import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 0, 149),
        foregroundColor: Colors.tealAccent,
        title: Text("Homepage", style: TextStyle(color: Colors.brown)),
        // leading: Icon(Icons.home),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 255, 0, 149),
        foregroundColor: Colors.tealAccent,
        tooltip: "Add Something!!",
        child: Icon(Icons.add),
      ),

      drawer: NavigationDrawer(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Name"),
            accountEmail: Text("Email"),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text("HomePage"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("ProfilePage"),
            onTap: () {},
          ),
        ],
      ),

      body: Column(
        children: [
          Text("Hello 63b", style: TextStyle(fontSize: 30)),
          Text("Welcome to our class.."),
          Container(
            height: 300,
            width: 300,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.pinkAccent[100],
              border: Border.all(color: Colors.tealAccent, width: 5),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              // shape: BoxShape.circle,
            ),
            child: Text("I am container!!"),
          ),
        ],
      ),
    );
  }
}
