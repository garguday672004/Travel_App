import 'dart:io';

import 'package:app_dev/cubit/app_cubit_states.dart';
import 'package:app_dev/widgets/app_large_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/app_cubits.dart';
import '../../widgets/app_text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubits,CubitStates>(builder: (context,state){
      DetailState detail = state as DetailState;
      return Scaffold(
          body: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Stack(
              children: [
                Positioned(
                    left: 0,
                    right: 0,
                    child: Container(
                      width: double.maxFinite,
                      height: 350,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://images.unsplash.com/photo-1526512340740-9217d0159da9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dmVydGljYWx8ZW58MHx8MHx8&w=1000&q=80"),
                            fit:BoxFit.cover
                        ),
                      ),
                    )),
                Positioned(
                    left: 20,
                    top: 50,
                    child: Row(
                      children: [
                        IconButton(onPressed: () {
                          BlocProvider.of<AppCubits>(context).goHome();
                        }, icon: Icon(Icons.menu),
                          color: Colors.white,
                        ),
                      ],
                    )),
                Positioned(
                    top: 320,
                    child: Container(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      height: 500,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppLargeText(text: "Seedhi Sadak",color: Colors.black.withOpacity(0.8)),
                              AppLargeText(text: "Rs. 2050",color: Colors.blueGrey),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Icon(Icons.location_on,color: Colors.black54,),
                              SizedBox(width: 5,),
                              AppText(text: "Barnala, Punjab", color: Colors.black54),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Container(
                            padding: const EdgeInsets.only(right: 220),
                            // child: AppText(text: "Description" ,color: Colors.black,)
                            child : Text(
                              "Description",
                              style: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 2.0,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            // padding: const EdgeInsets.only(right: 260),
                              child: Text("Barnala is a city in the state of Punjab of India. Barnala city serves as the headquarters of the Barnala district which was formed in 2006. Prior to formation of Barnala district, this city was located in Sangrur district. It is situated near Bathinda.")
                          ),
                          // Link(url: Uri.parse("https://www.makemytrip.com/"), builder : (context,followLink){
                          //   return ElevatedButton(onPressed: followLink, child: child)
                          // }),
                          Container(
                              padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                              child: FlatButton(onPressed: () {},height: 60,
                                child: Text(
                                  "Book Trip Now >>>",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      letterSpacing: 2.0),),
                                color: Colors.blue,))
                        ],
                      ),
                    ))
              ],
            ),
          ),

      );
    });

  }
}
