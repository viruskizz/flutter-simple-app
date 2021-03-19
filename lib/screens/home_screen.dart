import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_app/providers/counter_provider.dart';
import 'package:simple_app/widgets/total_count_text_widget.dart';

import '../widgets/my_card_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 120.0,
            width: 240.0,
            child: Card(
              child: TotalCountTextWidget(),
            ),
          ),
          MyCardWidget(title: 'Home Screen'),
          ActionPanelWidget(),
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

class ActionPanelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.0,
      height: 120.0,
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: IconButton(
                icon: Icon(Icons.add),
                color: Colors.teal,
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false).increase();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: IconButton(
                icon: Icon(Icons.remove),
                color: Colors.deepOrange,
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false).decrease();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
