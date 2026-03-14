import 'package:flutter/material.dart';
import 'package:flux/copmonent/data.dart';

import 'copmonent/feature_component.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          "Gemstore",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                rowWidget(imgageTitle: "Vector"),

                rowWidget(
                  containerBorderColor: Color(0xffF3F3F3),
                  containerBgColor: Color(0xffF3F3F3),
                  circleBgColor: Color(0xffF3F3F3),
                  imgBgColor: Colors.black,
                  title: 'Men',
                  imgageTitle: "men",
                ),
                rowWidget(
                  containerBorderColor: Color(0xffF3F3F3),
                  containerBgColor: Color(0xffF3F3F3),
                  circleBgColor: Color(0xffF3F3F3),
                  imgBgColor: Colors.black,
                  title: 'Accessories',
                  imgageTitle: "glass",
                ),
                rowWidget(
                  containerBorderColor: Color(0xffF3F3F3),
                  containerBgColor: Color(0xffF3F3F3),
                  circleBgColor: Color(0xffF3F3F3),
                  imgBgColor: Colors.black,
                  title: 'Beauty',
                  imgageTitle: "beauty",
                ),
              ],
            ),
            SizedBox(height: 40),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Container(
                      padding: EdgeInsets.only(right: 27, top: 20),
                      alignment: Alignment.topRight,
                      width: MediaQuery.sizeOf(context).width * 0.87,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/autumn.png"),
                        ),
                      ),
                      child: Text(
                        "Autumn\nCollection\n2022",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  "Feature Products",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text("Show All"),
              ],
            ),
            SizedBox(
              height: 227,
              child: ListView.builder(
                itemCount: Data.assetList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return FeatureProductComponent(
                    asset: 'assets/${Data.assetList[index]}.png',
                    title:Data.titleList[index],
                    price: '\$ ${Data.priceList[index]}',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget rowWidget({
    String? title,
    Color? containerBgColor,
    Color? containerBorderColor,
    imgBgColor,
    Color? circleBgColor,
    required String imgageTitle,
  }) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: containerBgColor ?? Colors.white,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              width: 1,
              color: containerBorderColor ?? Colors.black,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: CircleAvatar(
              backgroundColor: circleBgColor ?? Color(0xff3A2C27),
              radius: 20,
              child: Image.asset(
                "assets/$imgageTitle.png",
                color: imgBgColor ?? Colors.white,
              ),
            ),
          ),
        ),
        Text(title ?? "Women"),
      ],
    );
  }
}
