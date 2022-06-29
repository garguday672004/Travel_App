import 'package:app_dev/cubit/app_cubits.dart';
import 'package:app_dev/widgets/app_large_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "https://w.wallha.com/ws/12/9kiX3uWJ.jpg",
    // "https://wallpaperaccess.com/full/760289.jpg",
    "https://thatwildidea.co.uk/wp-content/uploads/2019/09/photographing-mountains-portrait-mode.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
          itemCount: 2,
          itemBuilder: (_, index){
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  images[index]
                ),
                fit: BoxFit.cover,
              )
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // RaisedButton(onPressed: () {}),
                      AppLargeText(text: "Trips"),
                      AppText(text: "Mountain",size: 30),
                      SizedBox(height: 20),
                      Container(
                        width: 250,
                        child: AppText(
                          text: "Mountain hikes give you an incredible sense of freedom, along with a edurance test. ",
                          color: Colors.black54,
                          size: 14,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          BlocProvider.of<AppCubits>(context).getData();
                        },
                        child: Container(
                          width: 200,
                          child: RaisedButton(
                            onPressed: (){BlocProvider.of<AppCubits>(context).getData();},
                            child:
                            Text(
                                style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 2.0,
                                  // fontSize: 28.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                'click here >>>'),
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children:
                      List.generate(2, (indexDots){
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                         width: 8,
                         height: index==indexDots?25:8,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(8),
                           color: Colors.blueGrey,
                         )
                         // color: Colors.blueGrey,
                        );
                      }),
                  )
                ],

              ),
            ),
          );
      }),
    );
  }
}
