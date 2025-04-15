import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.deepPurple[300],
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(
            "Balance",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            '\$ 2,500.00',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //card number
              Text(
                '**** 3567',
                style: TextStyle(color: Colors.white),
              ),
              //card expiry date
              Text(
                '12/25',
                style: TextStyle(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
