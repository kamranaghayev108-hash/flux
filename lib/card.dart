import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Add new card',
          style: TextStyle(fontSize: 20, fontWeight: .bold),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Padding(
       padding: EdgeInsets.all(16),
       child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              'assets/msc.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              labelText: 'Cardholder Name',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 12),
          TextField(
            decoration: InputDecoration(
              labelText: 'Card Number',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Expired',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(width:20),
                   Expanded(
                     child: TextFormField(
                                     decoration: InputDecoration(
                                       labelText: 'CVV',
                                       border: OutlineInputBorder(),
                                     ),
                                   ),

                   ),
             
              
            ],
          ),
         
        ],
       ),
      ),
      
    
    );
  }
}
