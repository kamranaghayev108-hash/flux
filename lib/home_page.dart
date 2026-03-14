import 'package:flutter/material.dart';
import 'package:flux/copmonent/data.dart';
import 'package:flux/copmonent/feature_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notification_important_rounded),
          ),
        ],
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        centerTitle: true,
        title: Text(
          'Gemstore',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 1, color: Colors.black),
                      ),
                      height: 50,
                      width: 50,
                      child: Padding(
                        padding: EdgeInsets.all(3.0),
                        child: CircleAvatar(
                          backgroundColor: Color(0xff3A2C27),
                          radius: 20,
                          child: Image.asset(
                            'assets/Vector.png',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 6),
                    Text('Women', style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 1, color: Colors.black),
                      ),
                      height: 50,
                      width: 50,
                      child: Padding(
                        padding: EdgeInsets.all(3.0),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFF3F3F3),
                          radius: 20,
                          child: Image.asset(
                            'assets/men.png',
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 6),
                    Text('Men', style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 1, color: Colors.black),
                      ),
                      height: 50,
                      width: 50,
                      child: Padding(
                        padding: EdgeInsets.all(3.0),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFF3F3F3),
                          radius: 20,
                          child: Image.asset(
                            'assets/glass.png',
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 6),
                    Text('Accesories', style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 1, color: Colors.black),
                      ),
                      height: 50,
                      width: 50,
                      child: Padding(
                        padding: EdgeInsets.all(3.0),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFF3F3F3),
                          radius: 20,
                          child: Image.asset(
                            'assets/beauty.png',
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 6),
                    Text('Beauty', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Container(
                      padding: EdgeInsets.only(right: 27, top: 20),
                      alignment: Alignment.topRight,
                      width: MediaQuery.sizeOf(context).width * 0.87,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/autumn.png'),
                        ),
                      ),
                      child: Text(
                        'Autumn \n\ Collection \n\ 2021',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  'Feature Products',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text('Show All'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 227,
              child: ListView.builder(
                itemCount: Data.assetList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return FeatureProductComponent(
                    asset: 'assets/${Data.assetList[index]}.png',
                    title: Data.titleList[index],
                    price: '\$ ${Data.priceList[index]}',
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 170,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(color: Color(0xFFF8F8FA)),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: .start,
                    mainAxisAlignment: .center,
                    children: [
                      Text(
                        '| NEW COLLECTION',
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'HANG OUT \n\ & PARTY',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: .bold,
                          height: 1.1,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset('assets/goyqiz.png', height: 150, width: 100),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  'Recommended',
                  style: TextStyle(fontSize: 20, fontWeight: .bold),
                ),
                Text('Show All'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: SizedBox(
              height: 80,
              child: ListView.builder(
                itemCount: RecommendedDataClass.assetList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return RecommendedProductComponent(
                    asset:
                        'assets/${RecommendedDataClass.assetList[index]}.png',
                    title: RecommendedDataClass.titleList[index],
                    price: '\$ ${RecommendedDataClass.priceList[index]}',
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  'Top Collection',
                  style: TextStyle(fontSize: 20, fontWeight: .bold),
                ),
                Text('Show All'),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 150,
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFFF8F8FA),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: .spaceBetween,

                children: [
                  Column(
                    mainAxisAlignment: .center,
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        '| Sale up to 40%',
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'FOR SLIM \n\ & BEAUTY',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: .bold,
                          height: 1.1,
                        ),
                      ),
                    ],
                  ),
                  Image.asset('assets/goyqiz.png', height: 150, width: 100),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 200,
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFFF8F8FA),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: .spaceBetween,

                children: [
                  Column(
                    mainAxisAlignment: .center,
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        '| Summer Collection 2021',
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Most sexy \n\ & fabulous \n\ design',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: .bold,
                          height: 1.1,
                        ),
                      ),
                    ],
                  ),
                  Image.asset('assets/goyqiz.png', height: 150, width: 100),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: .start,
              
              
              children: [
                Image.asset(
                  'assets/banner3.png', 
                  width: 150,
                  ),
                  Image.asset(
                    'assets/banner4.png', 
                   width: 150,
                  ),
                  
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
         
        ],
      ));
  }
}
