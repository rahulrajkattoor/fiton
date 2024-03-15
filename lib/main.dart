import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fiton/Fitnes%20app/service/firebase%20helper.dart';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:provider/provider.dart';



import 'Fitnes app/Theme provider/theme provider.dart';
import 'Fitnes app/splash screen.dart';

void main() async{
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
        Provider<FireBaseHelper>(create: (_)=>)


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
      home: splash(),
    );
  }
}

