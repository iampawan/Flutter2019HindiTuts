import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

// * Stateless Widget // * Stateful WIdget

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: Text(
          "Hello World",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("mtechviral@gmail.com"),
              accountName: Text("Pawan Kumar"),
              currentAccountPicture: CircleAvatar(
                child: Text("P"),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Image.network(
                "https://m.telegraphindia.com/unsafe/620x350/smart/static.telegraphindia.com/derivative/THE_TELEGRAPH/1689224/16X9/image36e62462-75c0-45de-abd6-1a5b2677d0e6.jpg",
                width: 50,
                height: 30,
              ),
              title: Text("Dhoni"),
              subtitle: Text("CSK"),
              trailing: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
