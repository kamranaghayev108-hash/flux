import 'package:flutter/material.dart';

class FeatureProductComponent extends StatelessWidget {
  const FeatureProductComponent({
    super.key, required this.asset, required this.title, required this.price,
  });
 final String asset,title,price;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        mainAxisAlignment: .start,
        crossAxisAlignment: .start,
        children: [
          Image.asset(asset),
          SizedBox(height: 8,),
          Text(title,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),),
          SizedBox(height: 4,),
          Text(price,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
        ],
      ),
    );
  }
}

class RecommendedProductComponent extends StatelessWidget {
  const RecommendedProductComponent({
    super.key, required this.asset, required this.title, required this.price,
  });
 final String asset,title,price;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Row(
        mainAxisAlignment: .start,
        crossAxisAlignment: .start,
        children: [
          Image.asset(asset),
          SizedBox(height: 8,),
          Column(
            children: [
              Text(title,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),),
          SizedBox(height: 4,),
          Text(price,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
            ],
          ),
        ],
      ),
    );
  }
}
