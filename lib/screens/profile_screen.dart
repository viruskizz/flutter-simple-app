import 'package:flutter/material.dart';
import 'package:simple_app/widgets/my_card_widget.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments;
    var time;
    if (args != null) {
      time = (args as Map)['time'];
    } else {
      time = 0;
    }
    print(time);
    return Column(
      children: [
        MyCardWidget(title: 'Profile Screen',)
      ],
    );
  }
}
