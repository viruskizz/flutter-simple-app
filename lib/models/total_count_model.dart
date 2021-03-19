import 'package:flutter/foundation.dart';
import 'package:simple_app/models/total_daily_model.dart';

class TotalCountModel {
  final int grandTotal;
  final int todayTotal;
  List<dynamic> histories;

  TotalCountModel({
    @required this.grandTotal,
    @required this.todayTotal,
    this.histories,
  });

  factory TotalCountModel.fromJson(Map<String, dynamic> json) {
    return TotalCountModel(
      grandTotal: json['grandTotal'],
      todayTotal: json['todayTotal'],
      histories: (json['histories'] as List).map((el) => TotalDailyModel.fromJson(el)).toList(),
    );
  }
}