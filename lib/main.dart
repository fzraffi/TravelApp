import 'package:flutter/material.dart';
import 'package:project2/home.dart';

void main() {
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(children: [
        Positioned.fill(
            child: Image.network(
          'https://images.unsplash.com/photo-1527631746610-bca00a040d60?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          fit: BoxFit.cover,
        )),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Transform.translate(
              offset: Offset(
                  0, -60), // Sesuaikan pergeseran vertikal sesuai kebutuhan
              child: Text(
                '''TRAVEL
   APP''',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Dokdo'),
              ),
            ),
          ),
        ),

        Positioned.fill(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 360)),
            Text(
              '''Our app is designed to help you seamlessly plan and organize your journeys, ensuring that every adventure is an unforgettable experience.''',
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.all(100)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black
              ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Container(
                  height: 50,
                  width: 150,
                  child: Center(
                    child: Text('LETS GET STARTED', style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                )),
          ],
        )),
      ]),
    );
  }
}
