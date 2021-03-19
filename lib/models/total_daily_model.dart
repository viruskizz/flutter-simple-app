import 'package:flutter/foundation.dart';

class TotalDailyModel {
  final int amount;
  final String date;
  int deviation;
  int net;

  TotalDailyModel({
    @required this.amount,
    @required this.date,
    this.deviation,
    this.net,
  });

  factory TotalDailyModel.fromJson(Map<String, dynamic> json) {
    return TotalDailyModel(
      amount: json['amount'],
      date: json['date'],
      deviation: json['deviation'],
      net: json['net'],
    );
  }
}
