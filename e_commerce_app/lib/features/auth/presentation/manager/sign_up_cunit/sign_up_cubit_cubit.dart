import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'sign_up_cubit_state.dart';

class SignUpCubitCubit extends Cubit<SignUpCubitState> {
  SignUpCubitCubit() : super(SignUpCubitInitial());
 Future<void> registerUser(
      {required String email, required String password}) async {
    emit(SignUpLoading());
    try {
      final UserCredential credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(SignUpSuccess());
    } on FirebaseException catch (e) {
      if (e.code == 'email-already-in-use') {
        emit(
          SignUpFailure(errorMessage: 'Email already in use'),
        );
      } else if (e.code == 'weak-password') {
        emit(
          SignUpFailure(errorMessage: 'Password is too weak'),
        );
      }
    } catch (e) {
      emit(SignUpFailure(errorMessage: 'Something went wrong'),);
    }
  }
}
