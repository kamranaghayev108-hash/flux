import 'package:flutter/material.dart';

class Voucher extends StatefulWidget {
  const Voucher({super.key});

  @override
  State<Voucher> createState() => _VoucherState();
}

class _VoucherState extends State<Voucher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        title: Text("Voucher"),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/tick.png",
                  width: double.infinity,
                  fit: .fitWidth,
                ),
                Positioned.fill(
                  child: Row(
                    children: [
                      SizedBox(width: 40),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "50%",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 40.0,left: 10,right: 110),
                        child: Column(
                          mainAxisAlignment: .start,
                          crossAxisAlignment: .start,
                          children: [
                            Text("Black Friday"),
                            Text("Sale off 50 %"),
                            Text("Code: FridaySale"),
                          ],
                        ),

                      ),

                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: 30.0),
                        child: Column(
                          mainAxisAlignment: .start,
                          crossAxisAlignment: .start,
                          children: [
                            Text("Exp."),
                            SizedBox(height: 10,),
                            Text("Dec \n20"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
             Stack(
              children: [
                Image.asset(
                  "assets/tick.png",
                  width: double.infinity,
                  fit: .fitWidth,
                ),
                Positioned.fill(
                  child: Row(
                    children: [
                      SizedBox(width: 40),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade700,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "50%",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 40.0,left: 10,right: 110),
                        child: Column(
                          mainAxisAlignment: .start,
                          crossAxisAlignment: .start,
                          children: [
                            Text("Black Friday"),
                            Text("Sale off 50 %"),
                            Text("Code: FridaySale"),
                          ],
                        ),

                      ),

                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: 30.0),
                        child: Column(
                          mainAxisAlignment: .start,
                          crossAxisAlignment: .start,
                          children: [
                            Text("Exp."),
                            SizedBox(height: 10,),
                            Text("Dec \n20"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
             Stack(
              children: [
                Image.asset(
                  "assets/tick.png",
                  width: double.infinity,
                  fit: .fitWidth,
                ),
                Positioned.fill(
                  child: Row(
                    children: [
                      SizedBox(width: 40),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "50%",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 40.0,left: 10,right: 110),
                        child: Column(
                          mainAxisAlignment: .start,
                          crossAxisAlignment: .start,
                          children: [
                            Text("Black Friday"),
                            Text("Sale off 50 %"),
                            Text("Code: FridaySale"),
                          ],
                        ),

                      ),

                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: 30.0),
                        child: Column(
                          mainAxisAlignment: .start,
                          crossAxisAlignment: .start,
                          children: [
                            Text("Exp."),
                            SizedBox(height: 10,),
                            Text("Dec \n20"),
                          ],
                        ),
                      ),
                    ],
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
  
