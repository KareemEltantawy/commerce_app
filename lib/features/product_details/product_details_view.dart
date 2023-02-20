import 'package:carousel_slider/carousel_slider.dart';
import 'package:commerce_app/common_component/custom_button.dart';
import 'package:commerce_app/common_component/custom_text_field.dart';
import 'package:commerce_app/constant.dart';
import 'package:commerce_app/core/router/router.dart';
import 'package:commerce_app/features/product_details/product_datails_cubit.dart';
import 'package:commerce_app/features/product_details/product_datails_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetailsView extends StatelessWidget {

  List<String> images = [
    'assets/images/man.png',
    'assets/images/man.png',
    'assets/images/man.png',
  ];

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var viewController = TextEditingController();

  double customerRate = 3.0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ProductDetailsCubit(),
      child: BlocConsumer<ProductDetailsCubit, ProductDetailsStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.topStart,
                        children: [
                          CarouselSlider(
                            items: images.map((e) => Image(
                                      image: AssetImage(e),
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ))
                                .toList(),
                            options: CarouselOptions(
//                      onPageChanged: (index,reason){},
                              height: 300.0,
                              viewportFraction: 1.0,
                              autoPlay: true,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: IconButton(
                                onPressed: () {
                                  MagicRouter.pop();
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: defaultColor,
                                )),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                              'DNK Yellow Shoes',
                              style: Theme.of(context).textTheme.bodyText1,
                            )),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text('4.3',style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400
                            ),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 13.0,
                              backgroundColor: Colors.blueAccent,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6.0),
                              child: CircleAvatar(
                                radius: 13.0,
                                backgroundColor: Colors.amber,
                              ),
                            ),
                            CircleAvatar(
                              radius: 13.0,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Text(
                              'Size',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 14.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0),
                                  color: Color.fromRGBO(15, 137, 142, 0.2)),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    '40',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                        color: defaultColor),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    size: 16.0,
                                    color: defaultColor,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: [
                            Text(
                              '150EGP',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              '150EGP',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                ProductDetailsCubit.get(context).minus();
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 12.0, horizontal: 10.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.0),
                                    color: Colors.grey[300]),
                                child: Icon(
                                  Icons.remove,
                                  size: 16.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                '${ProductDetailsCubit.get(context).counter}',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                ProductDetailsCubit.get(context).plus();
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 12.0, horizontal: 10.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.0),
                                    color: Color.fromRGBO(15, 137, 142, 0.2)),
                                child: Icon(
                                  Icons.add,
                                  size: 16.0,
                                  color: defaultColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 17.0, horizontal: 16.0),
                        child: Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  ProductDetailsCubit.get(context).changeCategory(0);
                                },
                                child: Text('Description',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                        color: ProductDetailsCubit.get(context).categoryIndex == 0 ?  defaultColor : Colors.grey))),
                            SizedBox(
                              width: 20.0,
                            ),
                            InkWell(
                                onTap: () {
                                  ProductDetailsCubit.get(context)
                                      .changeCategory(1);
                                },
                                child: Text('Reviews',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                        color: ProductDetailsCubit.get(context).categoryIndex == 1 ?  defaultColor : Colors.grey))),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 1.0,
                        color: Colors.grey[200],
                      ),
                      ProductDetailsCubit.get(context).categoryIndex == 0 ? Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(children: [
                          Text('Morem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'
                            ,style: Theme.of(context).textTheme.bodyText2,
                          ),
                          SizedBox(height: 100.0,),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: defaultColor
                            ),
                            child: MaterialButton(onPressed: (){

                            },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(image: AssetImage('assets/images/bag.png'),fit: BoxFit.cover,width: 25,height: 25.0,),
                                  SizedBox(width: 5.0,),
                                  Text('Add to cart',style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                      fontSize: 16.0,
                                      color: Colors.white
                                  ),),
                                ],
                              ),
                            ),
                          )
                        ],),
                      ) : Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 26.0,
                                backgroundImage: AssetImage('assets/images/man.png'),
                              ),
                              SizedBox(width: 8.0,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Ahmed Solia',style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500
                                    ),),
                                    SizedBox(height: 8.0,),
                                    Text('1/20/2023',style: Theme.of(context).textTheme.bodyText2,),
                                  ],
                                ),
                              )
                              ,Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Text('4.3',style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400
                              ),)
                            ],
                          ),
                          SizedBox(height: 16.0,),
                          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit inte',
                          style: Theme.of(context).textTheme.bodyText2,),
                          SizedBox(height: 16.0,),
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.3),
                                width: 1.0
                              )
                            ),
                            child: Column(
                              children: [
                                Text('Your email address will not be published. Required fields are marked *',
                                  style: Theme.of(context).textTheme.bodyText2,),
                                SizedBox(height: 16.0,),
                                Card(
                                  color: Colors.grey[200],
                                  child: CustomTextField(
                                    fillColor: Colors.grey[200],
                                    hint: 'Name',
                                    controller: nameController,
                                    keyboardType: TextInputType.text,
                                    validator: (value){
                                      if(value!.isEmpty){
                                        return 'This field must not be empty';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                Card(
                                  color: Colors.grey[200],
                                  child: CustomTextField(
                                    fillColor: Colors.grey[200],
                                    hint: 'Email',
                                    controller: emailController,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (value){
                                      if(value!.isEmpty){
                                        return 'This field must not be empty';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                Card(
                                  color: Colors.grey[200],
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CustomTextField(
                                        fillColor: Colors.grey[200],
                                        hint: 'Your review',
                                        controller: viewController,
                                        keyboardType: TextInputType.text,
                                        validator: (value){
                                          if(value!.isEmpty){
                                            return 'This field must not be empty';
                                          }
                                          return null;
                                        },
                                      ),
                                      SizedBox(height: 30.0,),
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: RatingBar.builder(
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                          itemSize: 29,
                                          itemBuilder: (context, _) => Icon(Icons.star,color: Colors.amber,),
                                          onRatingUpdate: (rating) {
                                            customerRate = rating;
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                CustomButton(
                                  fontColor: defaultColor,
                                  text: 'Submit',
                                  bgColor: Color.fromRGBO(207, 231, 232, 1),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20.0,),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: defaultColor
                            ),
                            child: MaterialButton(onPressed: (){

                            },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(image: AssetImage('assets/images/bag.png'),fit: BoxFit.cover,width: 25,height: 25.0,),
                                  SizedBox(width: 5.0,),
                                  Text('Add to cart',style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.0,
                                      color: Colors.white
                                  ),),
                                ],
                              ),
                            ),
                          )
                        ],),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
