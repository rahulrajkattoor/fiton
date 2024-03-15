import 'package:firebase_auth/firebase_auth.dart';
class FireBaseHelper{
  final FirebaseAuth auth=FirebaseAuth.instance;
  get user=>auth.currentUser;
  //user signup
  Future<String?>registerUser({required String email,
    required String pwd,
    })async{
    try{
      await auth.createUserWithEmailAndPassword(email:email,password:pwd,);
      return null;
    }on FirebaseAuthException catch(e){
      return e.message;
    }catch(e){
      print(e);
    }
  }
  //signin user
  Future<String?>loginUser({
    required String email,required String pwd
})async{
    try{
      await auth.signInWithEmailAndPassword(email:email,password:pwd);
      return null;
    }on FirebaseAuthException catch(e){
      if(e.code=='user not found'){
        print("no user found that email");
      }else if(e.code=='wrong password'){
        print("wrong password provider for that user");
      }
      return e.message;

    }
  }
  //sign out
   Future<void>logout()async{
    await auth.signOut();
   }
}