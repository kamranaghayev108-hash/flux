import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notification_add_rounded),
          ),
        ],
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        centerTitle: true,
        title: Text('My Whistlist', style: TextStyle(fontWeight: .bold)),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Text(
                    'All Items',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: .bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 40,
                  color: Colors.black,
                  alignment: Alignment.center,
                  child: Text(
                    'Boards',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: .bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Image.asset('assets/f1.png', fit: BoxFit.cover),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Image.asset('assets/f2.png', fit: BoxFit.cover),
                    ),
                    SizedBox(width: 8),
                    Column(
                      children: [
                        Image.asset('assets/f3.png', height: 60, width: 60),
                        SizedBox(height: 8),
                        Image.asset('assets/f4.png', height: 60, width: 60),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/f5.png', height: 60, width: 60),
                        Image.asset('assets/f6.png', height: 60, width: 60),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          'Going out outfits',
                          style: TextStyle(fontSize: 25, fontWeight: .bold),
                        ),
                        Text('36 Items', style: TextStyle(color: Colors.grey),
                        ),
                      ],
                      
                    ),
                   
                    
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
                SizedBox(height:10),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ],
            ),
            
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Image.asset('assets/g1.png', fit: BoxFit.cover),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Image.asset('assets/g2.png', fit: BoxFit.cover),
                    ),
                    SizedBox(width: 8),
                    Column(
                      children: [
                        Image.asset('assets/g3.png', height: 60, width: 60),
                        SizedBox(height: 8),
                        Image.asset('assets/g4.png', height: 60, width: 60),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/g5.png', height: 60, width: 60),
                        Image.asset('assets/g6.png', height: 60, width: 60),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          'Office Fashion',
                          style: TextStyle(fontSize: 25, fontWeight: .bold),
                        ),
                        Text('20 Items', style: TextStyle(color: Colors.grey),
                        ),
                      ],
                      
                    ),
                   
                    
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
                SizedBox(height:10),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ],
            ),
            
          ),
        ],
      ),
    );
  }
}
