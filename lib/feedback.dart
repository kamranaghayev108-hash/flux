

import 'package:flutter/material.dart';

class MyFeedback extends StatefulWidget {
  const MyFeedback({super.key});

  @override
  State<MyFeedback> createState() => _MyFeedbackState();
}

class _MyFeedbackState extends State<MyFeedback> {
  int rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:  Text(
          'Share your feedback',
          style: TextStyle(
            color: Colors.black,
            fontWeight: .bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Text(
              'What is your opinion of GemStore?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 19,
                fontWeight: .bold,
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: .center,
              children: List.generate(5, (index) {
                return IconButton(
                  onPressed: () {
                    setState(() {
                      rating = index + 1;
                    });
                  },
                  icon: Icon(
                    index < rating ? Icons.star : Icons.star_border,
                    color: Colors.black,
                    size: 50,
                  ),
                );
              }),
            ),
            SizedBox(height: 70),

            Container(
              width: 350,
              height: 290,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Stack(
                children: [
                  TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText:
                          'Would you like to write anything about this product?',
                      hintStyle: TextStyle(color: Colors.black, fontSize: 14),
                      border: InputBorder.none,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Text(
                      '50 characters',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 70),
            SizedBox(
              width: 350,
              height: 52,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF111111),
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Send Feedback',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
