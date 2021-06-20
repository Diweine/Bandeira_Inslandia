import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Bandeira Islândia'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Text('Bandeira Islândia',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                  )),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 230,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(0, 0),
                    child: Container(
                      width: 350,
                      height: 230,
                      decoration: BoxDecoration(
                        color: Color(0xFF012169),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0),
                    child: Container(
                      width: 350,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.32, 0),
                    child: Container(
                      width: 40,
                      height: 230,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0),
                    child: Container(
                      width: 350,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Color(0xFFC8102E),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.3, 0),
                    child: Container(
                      width: 20,
                      height: 230,
                      decoration: BoxDecoration(
                        color: Color(0xFFC8102E),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
