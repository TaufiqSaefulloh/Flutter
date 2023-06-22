import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/contact_cubit.dart';
import 'add_contact_screen.dart'; 

// ignore: camel_case_types
class home_screen extends StatelessWidget { 
  const home_screen({Key? key}) : super(key: key); 
  
  @override Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: const Text('Home'), 
      ), 
      body: BlocBuilder<contact_cubit, contact_state> ( 
        builder: (context, state) { 
          if (state is ContactLoaded) { 
            return ListView.builder ( 
              scrollDirection: Axis.vertical, 
              itemCount: state.user.length, 
              itemBuilder: (context, index) { 
                return Padding ( 
                  padding: const EdgeInsets.fromLTRB (8.0, 12.0, 8.0,0),
                  child: Container( 
                    decoration: const BoxDecoration ( 
                      color: Color (0xffD2ECD6), 
                      borderRadius: BorderRadius.all( 
                        Radius.circular (5.0),
                      ),
                    ),
                    child: ListTile (
                      leading: const
Icon (Icons.account_circle_rounded),
                title: Column (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment:
MainAxisAlignment. spaceBetween,
                    children: [
                      Text (state.user [index].name),
                      Text (
                        state.user[index].number.toString(),
                        style: const TextStyle (color:
                        Colors.black54),
                      ),
                    ],
                ),
  trailing: GestureDetector( onTap: () { 
      context .read<contact_cubit>() .removeUser(index: index); 
          }, 
          child: const Icon(Icons.delete)), 
          ), 
        ), 
      ); 
    }, 
  ); 
  } else if (state is ContactLoading) { 
    return const Center(child: CircularProgressIndicator()); 
    } 
    return Center( 
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.center, 
        children: const [ 
          Icon(Icons.group_outlined), Text('Your contact is empty'), 
          ], 
        ), 
      ); 
    }, 
  ),

      floatingActionButton: FloatingActionButton( 
        onPressed: () { 
          Navigator.push( 
            context, 
            MaterialPageRoute( 
              builder: (context) => const add_contact_screen()));
        }, 
        child: const Icon(Icons.add), 
        ), 
    ); 
  } 
}