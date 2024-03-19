
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fiton/Fitnes%20app/Login%20page.dart';
import 'package:fiton/Fitnes%20app/fitnes%20home%20page.dart';
import 'package:fiton/Fitnes%20app/fitnes%20home.dart';
import 'package:fiton/Fitnes%20app/service/firebase%20helper.dart';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:provider/provider.dart';



import 'Fitnes app/Theme provider/theme provider.dart';
import 'Fitnes app/splash screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBYyKH3TZojU5jaenhhPNKHdUMDkTy8Y0Y",
          appId:  "1:238774264804:android:19f212745acebeb57addf1",
          messagingSenderId: '',
          projectId: " fiton-ae242")
  );
  runApp(
      MultiProvider(providers:[
        ChangeNotifierProvider(
            create: (context) => Themeprovider()),
        Provider<Firebaseauth_method>(create: (_)=>Firebaseauth_method( FirebaseAuth.instance)),
        StreamProvider(create: (context)=> context.read<Firebaseauth_method>().authState, initialData: null),



      ],
        child: myapp(),
      ));


}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: Provider.of<Themeprovider>(context).themedata,
      home:splash()
    );
  }
}
class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final Firebaseuser= context.watch<User?>();

    if (Firebaseuser != null){
      return fitnesnavigation();
    }
    return loginpage();
  }
}
