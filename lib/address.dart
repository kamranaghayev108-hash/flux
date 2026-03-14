import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Delivery address',
          style: TextStyle(fontSize: 20, fontWeight: .bold),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
          iconSize: 22,
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
               
                Container(
                  
                 
                  height: 120,
                  margin: EdgeInsets.only(left: 30),
                
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Radio(
                        value: '',
                      ),
                      Column(
                        crossAxisAlignment: .start,
                        mainAxisAlignment: .start,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/house.png'),
                              SizedBox(width: 20),
                              Column(
                                children: [
                                  Text(
                                    'SEND TO',
                                    style: TextStyle(fontSize: 15, color: Colors.grey),
                                  ),
                                  Text(
                                    'My Office',
                                    style: TextStyle(fontSize: 17, color: Colors.black),
                                  ),
                                ],
                              ),
                              SizedBox(width: 160),
                              Text('Edit', style: TextStyle(color: Colors.red)),
                            ],
                          ),
                          SizedBox(height: 10),
                          Column(
                            children: [
                              Text(
                                'SBI Building, street 3, Software Park',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Container(
              
              height: 120,
              margin: EdgeInsets.only(left: 30),
        
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                
                children: [
                  Radio(
                    value: '',
                  ),
                  Column(
                    crossAxisAlignment: .start,
                    mainAxisAlignment: .start,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/ev.png'),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              Text(
                                'SEND TO',
                                style: TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                              Text(
                                'My Home',
                                style: TextStyle(fontSize: 17, color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(width: 150),
                          Text('Edit', style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          Text(
                            'SBI Building, street 3, Software Park',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
