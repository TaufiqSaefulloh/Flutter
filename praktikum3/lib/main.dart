import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum3/bloc/contact_cubit.dart';
import 'package:praktikum3/view/home_screen.dart'; 

void main() { 
  runApp(const MyApp()); 
} 
  
  class MyApp extends StatelessWidget { 
    const MyApp({Key? key}) : super(key: key); 
    
    @override 
    Widget build(BuildContext context) { 
      return MultiBlocProvider( 
        providers: [
          BlocProvider(
            create:(context)=>contact_cubit(),
          ),
        ],
        child: const MaterialApp(
        home: home_screen(), 
        ),
        ); 
      } 
  }
  
  