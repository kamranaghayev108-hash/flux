import 'package:flutter/material.dart';
import 'package:flux/app.dart';

class Cost extends StatelessWidget {
  const Cost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,

      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/pink.png',
              height: 350,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.arrow_back),
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.favorite),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  mainAxisAlignment: .start,
                  children: [
                    Row(
                      mainAxisAlignment: .start,
                      children: [
                        Text(
                          'Sportswear Set',
                          style: TextStyle(fontSize: 18, fontWeight: .bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}