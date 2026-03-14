import 'package:flutter/material.dart';

class FeedBack2 extends StatefulWidget {
  const FeedBack2({super.key});

  @override
  State<FeedBack2> createState() => _FeedBack2State();
}

class _FeedBack2State extends State<FeedBack2> {
  int rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
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
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        backgroundColor: Colors.transparent,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisSize: .min,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.2),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.check,
                                  color: Colors.green,
                                  size: 35,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Thanks for your feedback!',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: .bold,
                                ),
                                textAlign: .center,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'We appreciated your feedback. \n\ We’ll use your feedback to improve \n\ your experience.',
                                textAlign: .center,
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(height: 20),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                  
                                },
                                child: Text(
                                  'Done',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  ),
                                
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
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
