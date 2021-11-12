import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ninjaId(),
  ));
}

class ninjaId extends StatefulWidget {
  const ninjaId({Key? key}) : super(key: key);

  @override
  State<ninjaId> createState() => _ninjaIdState();
}

class _ninjaIdState extends State<ninjaId> {
  int kiashLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("KIASH ID CARD"),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            kiashLevel += 1;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40, 50, 0),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://image.shutterstock.com/image-vector/programming-code-coding-hacker-background-260nw-1714491562.jpg"),
                radius: 40.0,
              ),
            ),
            Divider(color: Colors.white),
            Text("name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 20.0),
            Text("ITS KIASH",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                  letterSpacing: 0.5,
                )),
            SizedBox(height: 20),
            Text("Current Kiash Level ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 0.5)),
            SizedBox(height: 20),
            Text("$kiashLevel", style: TextStyle()),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  "codewithkiash@gmail>com",
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 30.0),
              ],
            ),
            Icon(Icons.phone),
            Text("+254254225422542"),
          ],
        ),
      ),
    );
  }
}
