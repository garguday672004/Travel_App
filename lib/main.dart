import 'package:app_dev/cubit/app_cubit_logics.dart';
import 'package:app_dev/cubit/app_cubits.dart';
import 'package:app_dev/pages/navpages/detail_page.dart';
import 'package:app_dev/pages/navpages/main_page.dart';
import 'package:app_dev/pages/welcome_page.dart';
import 'package:app_dev/services/data_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(){
    runApp(const MyApp());
}
class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primarySwatch: Colors.blue,
            ),
            home: BlocProvider<AppCubits>(
                create: (context)=>AppCubits(
                    data: DataServices()
                ),
                child: AppCubitLogics(),
            )
        );
    }
}