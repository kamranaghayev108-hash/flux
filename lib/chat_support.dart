import 'package:flutter/material.dart';

class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_new_outlined, 
          color: Colors.black,
          ),
          title: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                child: Icon(
                  Icons.person,color: Colors.grey,
                  ),  
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    'Admin',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: .bold,
                    ),

                  ),
                  Text(
                    'Online',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.green,
                    ),
                  ),
                  
                ],
                
              ),
              
            ],
          ),
          actions: [
            Icon(Icons.more_vert, color: Colors.black),
          ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16), 
              children: [
                Align(
                  alignment: .centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Hello! Can I help you?',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    
                  ),
                  
                ),
                SizedBox(height: 100),
                Align(
                  alignment: .centerRight,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Hi! I have a question about my order',
                    ),
                  ),
                  
                ),
                SizedBox(height: 500),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 5,
                      ),
                    ]
                    
                  ),
                  
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(25),

                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Type your message here',
                              border: InputBorder.none,
                            ),
                          ),
                          
                        ),
                        
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.send, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
          ),
        ],
      ),
    );
  }
}
