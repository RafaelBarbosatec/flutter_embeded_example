import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              'Fluxos desenvolvidos em flutter',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              child: Text('Primeira tela'),
              onPressed: () {
                Navigator.pushNamed(context, '/first');
              },
            ),
            ElevatedButton(
              child: Text('Segunda tela'),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
          ],
        ),
      ),
    );
  }
}
