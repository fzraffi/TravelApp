import 'package:flutter/material.dart';

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
      // appBar: AppBar(
      //   title: Text('TravelApp'),
      // ),
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
            Padding(padding: EdgeInsets.only(top: 100)),
            Text(
               '''Our app is designed to help you seamlessly plan and organize your journeys, ensuring that every adventure is an unforgettable experience.''',
               textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: (){

              }, 
              child: Container(
                height: 50,
                width: 200,
                color: Colors.white,
              ))
          ],
        ))
        
        // Positioned.fill(
        //     child: Align(
        //   alignment: Alignment.center,
        //   child: Text(
        //     '''Our app is designed to help you seamlessly plan and
        //     organize your journeys, ensuring that every adventure
        //     is an unforgettable experience.''',
        //     style: TextStyle(color: Colors.white),
        //   ),
        // )),
      ]),
    );
  }
}
