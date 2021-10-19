import 'package:counter_bloc/logic/cubits/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentation/screens/home_screen.dart';
import 'presentation/screens/second_screen.dart';
import 'presentation/screens/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {
            '/' : (context) => HomeScreen(title: 'HomeScreen', color: Colors.blueAccent),
            '/second' : (context) => SecondScreen(title: 'SecondScreen', color: Colors.redAccent),
            '/third' : (context) => HomeScreen(title: 'ThirdScreen', color: Colors.greenAccent),
          },
          home: BlocProvider<CounterCubit>(
            create: (context) => CounterCubit(),
            child: HomeScreen(
              title: 'Flutter Demo Home Page',
              color: Colors.blueAccent,  
            ),
          )
        ),
    );
  }
}