import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Text(
                    "My",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " Cards",
                    style: TextStyle(fontSize: 28),
                  )
                ],
              ),
            )

            //cards

            // 3 buttons -> send + pay + bills

            //column -> stats + transactions
          ],
        ),
      ),
    );
  }
}
