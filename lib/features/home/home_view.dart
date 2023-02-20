import 'package:commerce_app/features/home/components/list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constant.dart';
import 'components/grid_item.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome Back!',style: TextStyle(
              fontSize: 12,
              color: Colors.grey
            ),),
            SizedBox(height: 6.0,),
            Text('Falcon Thought',style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
            )),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 22.0,
              backgroundColor: defaultColor,
              child: Image(image: AssetImage('assets/images/bag.png'),fit: BoxFit.cover,width: 30,height: 30.0,),
//            child: Image(image: AssetImage('assets/images/bag.png'),width: 30,height: 30,),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(18.0)
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 18.0
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Shop wit us!',style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,
                          ),),
                          SizedBox(height: 17.0,),
                          Text('Get 40% Off for all iteams',style: TextStyle(
                            height: 1.4,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0,
                          ),),
                          SizedBox(height: 17.0,),
                          Row(
                            children: [
                              Text('Shop Now',style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),),
                              SizedBox(width: 5.0,),
                              Icon(Icons.arrow_forward,size: 18,)
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 180,
                      width: 140,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image:  AssetImage('assets/images/home.png')
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0,),
              Container(
                height: 37.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index) => ListItem(index: index,),
                    separatorBuilder: (context,index) => SizedBox(width: 10.0,),
                    itemCount: 4,
                ),
              ),
              SizedBox(height: 15.0,),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: MediaQuery.of(context).size.width/610,
                children: List.generate(12, (index) => GridItem()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
