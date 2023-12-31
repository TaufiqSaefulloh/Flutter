// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart'; 
import 'package:equatable/equatable.dart'; 
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart'; 
import '../../model/user.dart'; 
part 'contact_state.dart'; 

// ignore: camel_case_types
class contact_cubit extends Cubit<contact_state> { 
  contact_cubit() : super(ContactInitial()); 
  
  List<User> user = []; 
  
  void addContact({required String username, required int number}) { 
    emit(ContactInitial()); 
    user.add(User(name: username, number: number)); 
    emit(ContactLoading()); 
    Future.delayed(const Duration(seconds: 3), () => emit(ContactLoaded(user: user))); } void removeUser({required int index}) { emit(ContactInitial()); user.removeAt(index); if (user.isEmpty) { emit(ContactInitial()); } else { emit(ContactLoaded(user: user)); 
    }

    // ignore: unused_element
    void removeUser({required int index}) { 
      emit(ContactInitial()); 
      user.removeAt(index); 
      if (user.isEmpty) { 
        emit(ContactInitial()); 
        } else { 
          emit(ContactLoaded(user: user)); 
          }
        }
    }
}
