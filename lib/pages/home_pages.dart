import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/utils/my_card.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  // page controller
  final _controller = PageController();
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "My",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " Cards",
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),

                  //plus button
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add)),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //cards
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 2546.30,
                    cardNumber: 58708237,
                    expiryMonth: 12,
                    expiryYear: 28,
                    color: Colors.deepPurple[300],
                  ),
                  MyCard(
                    balance: 10400.00,
                    cardNumber: 90273462,
                    expiryMonth: 6,
                    expiryYear: 28,
                    color: Colors.blue[300],
                  ),
                  MyCard(
                    balance: 8350.70,
                    cardNumber: 28174671,
                    expiryMonth: 9,
                    expiryYear: 28,
                    color: Colors.red[300],
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
            )

            // 3 buttons -> send + pay + bills

            //column -> stats + transactions
          ],
        ),
      ),
    );
  }
}
