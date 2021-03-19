import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_app/providers/counter_provider.dart';

class CountWidget extends StatefulWidget {
  @override
  _CountWidgetState createState() => _CountWidgetState();
}

class _CountWidgetState extends State<CountWidget> {

  int _counter = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<CounterProvider>(
        builder: (context, provider, child) => Text(
          "${provider.counter.toString()}",
          style: TextStyle(fontSize: 15.0, color: Colors.white),
        ),
      ),
    );
  }
}
