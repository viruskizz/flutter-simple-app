import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simple_app/services/report_service.dart';

class TotalCountTextWidget extends StatefulWidget {
  @override
  _TotalCountTextWidgetState createState() => _TotalCountTextWidgetState();
}

class _TotalCountTextWidgetState extends State<TotalCountTextWidget> {
  int _num = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, () async {
      _getGrandTotal();
      Timer.periodic(Duration(seconds: 10), (timer) {
        _getGrandTotal();
      });
    });
  }

  _getGrandTotal() async {
    final response = await ReportService().getGrandTotalReport();
    setState(() {
      _num = response.grandTotal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Grand Total',
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            _num.toString(),
            style: TextStyle(
              color: Colors.black54,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
