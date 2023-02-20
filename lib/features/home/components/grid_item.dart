import 'package:commerce_app/constant.dart';
import 'package:commerce_app/core/router/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../product_details/product_details_view.dart';

class GridItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
          MagicRouter.navigateTo(ProductDetailsView());
      },
      child: Column(
        children: [
          Container(
            height: 230.0,
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Align(
                  alignment: AlignmentDirectional.topCenter  ,
                  child: Container(
                    width: double.infinity,
                    height: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      image: DecorationImage(image: AssetImage('assets/images/man.png'),fit: BoxFit.cover)
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 22.0,
                    backgroundColor: defaultColor,
                    child: Image(image: AssetImage('assets/images/bag.png'),fit: BoxFit.cover,width: 30,height: 30.0,),
//            child: Image(image: AssetImage('assets/images/bag.png'),width: 30,height: 30,),
                  ),
                ),
              ],
            ),
          ),
          Text('Bomber Jackets',style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
              color: defaultColor,
          )),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('\$49.99',style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14.0,
                color: Colors.black
              ),),
              SizedBox(width: 8.0,),
              Text('\$30.99',style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12.0,
                color: Colors.grey,
              )),
            ],
          )
        ],
      ),
    );
  }
}
