import 'package:app_dev/cubit/app_cubit_states.dart';
import 'package:app_dev/cubit/app_cubits.dart';
import 'package:app_dev/pages/navpages/detail_page.dart';
import 'package:app_dev/pages/navpages/home_page.dart';
import 'package:app_dev/pages/welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  _AppCubitLogicsState createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(builder: (context,state){
        if(state is DetailState){
          return DetailPage();
        }if(state is WelcomeState){
          return WelcomePage();
        }if(state is LoadedState){
          return HomePage();
        }if(state is LoadingState){
          return Center(child: CircularProgressIndicator(),);
        }else{
          return Container();
        }
      },),
    );
  }
}
