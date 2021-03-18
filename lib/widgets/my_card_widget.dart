import 'package:flutter/material.dart';
import 'package:simple_app/widgets/count_widget.dart';

class MyCardWidget extends StatelessWidget {
  final String title;

  MyCardWidget({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Card(
        color: Colors.blueAccent,
        elevation: 8.0,
        child: Center(
          child: Container(
            height: 160,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CountWidget(),
                FlatButton(
                  onPressed: () {
                    if (title != 'Home Screen') {
                      Navigator.pushReplacementNamed(context, '/');
                      return;
                    }
                    Navigator.pushReplacementNamed(context, '/profile',
                        arguments: {'time': 6});
                  },
                  child: Text('Click'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
