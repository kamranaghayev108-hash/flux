import 'package:flutter/material.dart';
import 'package:flux/copmonent/data.dart';
import 'package:flux/copmonent/feature_component.dart';

class WhishList extends StatefulWidget {
  const WhishList({super.key});

  @override
  State<WhishList> createState() => _WhishListState();
}

class _WhishListState extends State<WhishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'My Whistlist',
          style: TextStyle(fontSize: 18, fontWeight: .bold),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.black,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none)),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  color: Colors.black,
                  alignment: Alignment.center,
                  child: Text(
                    'All Items',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 40,
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Text(
                    'Boards',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: SizedBox(
              height: 600,
              
              child: GridView.builder(
                itemCount: WishlistData.assetList.length,

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7,

                ),
                itemBuilder: (context, index) {
                  
                  return FeatureProductComponent(
                    
                    asset: 
                    'assets/${WishlistData.assetList[index]}.png',
                    title: WishlistData.titleList[index],
                    price: '\$ ${WishlistData.priceList[index]}',
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class KeyWidget extends StatelessWidget {
  const KeyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
         
        ],
      ));
  }
}
