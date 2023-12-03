import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                Color.fromARGB(255, 243, 143, 107),
                Colors.white
              ])),
        ),
        automaticallyImplyLeading:
            false, // Menyembunyikan back button setelah navigator push
            actions: [
              Padding(padding: EdgeInsets.all(8),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/avatarcircle.png'),
              ),)
            ],
      ),
      body: ListView(
        children: [Text('Popular Location')],
      ),
    );
  }
}
