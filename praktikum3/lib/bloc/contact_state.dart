// ignore_for_file: camel_case_types

part of 'contact_cubit.dart'; 

@immutable 
abstract class contact_state extends Equatable{ 
  const contact_state(); 
  
  @override 
  List<User> get props => []; 
  } 
  
  class ContactInitial extends contact_state {} 

  class ContactLoading extends contact_state {} 

  class ContactLoaded extends contact_state { 
    final List<User> user; 
    const ContactLoaded({required this.user});
    
    @override 
    List<User> get props => user; 
    } 
    
    class ContactFailed extends contact_state {}