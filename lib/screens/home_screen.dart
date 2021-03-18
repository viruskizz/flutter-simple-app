import 'package:flutter/material.dart';

import '../widgets/my_card_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MyCardWidget(title: 'Home Screen'),
          Expanded(
            child: Container(
              child: Image.network(
                'https://www.sticky.digital/wp-content/uploads/2013/11/img-6.jpg',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
