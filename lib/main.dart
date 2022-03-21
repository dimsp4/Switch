import 'package:flutter/material.dart';

void main() {
  runApp(Switching());
}

class Switching extends StatelessWidget {
  const Switching({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySwitch(),
    );
  }
}

class MySwitch extends StatefulWidget {
  @override
  _MySwitchState createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  Image gambarGanteng = Image.asset('images/selaw.jpg',
      height: 300, width: 300, fit: BoxFit.cover);
  Image gambarJelek = Image.asset('images/kaget.jpg',
      height: 300, width: 300, fit: BoxFit.cover);

  bool tombol = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            tombol
                ? Text(
                    "😱",
                    style: TextStyle(fontSize: 30),
                  )
                : Text(
                    "🤨",
                    style: TextStyle(fontSize: 30),
                  ),
            SizedBox(
              height: 20,
            ),
            (tombol == true) ? gambarGanteng : gambarJelek,
            Switch(
              inactiveTrackColor: Colors.grey,
              activeTrackColor: Colors.grey,
              value: tombol,
              onChanged: (value) {
                setState(() {
                  tombol = !tombol;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
