import 'dart:async';

import 'package:flutter/material.dart';

class CountWidget extends StatefulWidget {
  @override
  _CountWidgetState createState() => _CountWidgetState();
}

class _CountWidgetState extends State<CountWidget> {

  int _counter = 0;
  Timer _timer;
  @override
  void dispose() {
    // TODO: implement dispose
    _timer = null;
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, ()  async {
      _timer = Timer.periodic(new Duration(seconds: 1), (timer) {
        increaseCounter();
        print(_counter);
      });
    });
  }

  increaseCounter() {
    setState(() {
      _counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        _counter.toString(),
        style: TextStyle(fontSize: 15.0, color: Colors.white),
      ),
    );
  }
}
