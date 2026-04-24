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

      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Hello 63b", style: TextStyle(fontSize: 30)),
            Text("Welcome to our class.."),

            SizedBox(
              height: 200,
              width: 200,
              child: Card(
                color: Colors.tealAccent,
                child: Center(child: Image.asset("assets/images/flutter.png")),
              ),
            ),
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
              child: Image.network(
                "https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=1024x1024&w=is&k=20&c=ATqBHzO_cgsU8v6plHxVHTgE8zgK0BfEGzixY6JYg-c=",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
