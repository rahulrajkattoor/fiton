import 'package:firebase_auth/firebase_auth.dart';
import 'package:fiton/Fitnes%20app/Login%20page.dart';
import 'package:fiton/Fitnes%20app/service/firebase%20helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Theme provider/theme provider.dart';
class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}
class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final user=context.read<Firebaseauth_method>().user;


    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Account ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "assets/icons/user.png",
                      // Adjust the path to your actual image
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name : ${user.displayName!}",
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                        Text(
                          "Email : ${user.email!}",

                          style: TextStyle(
                             // fontSize: 15,fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'Rate Us',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Icon(Icons.star),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'Share with friends',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Icon(Icons.share),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'Feedback',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Icon(Icons.feedback),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
              indent: 16,
              endIndent: 16,
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text(
                'Theme',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'Dark Mode',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: IconButton(
                  onPressed: () {

                    Provider.of<Themeprovider>(context,listen: false).toogletheme();




                  },
                  icon: Icon(
                    Icons.dark_mode,
                    size: 30,
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[400],
              indent: 16,
              endIndent: 16,
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text(
                'Account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // ListTile(
            //   onTap: () {
            //     Navigator.pushReplacement(context,
            //         MaterialPageRoute(builder: (context) => forgotpass()));
            //   },
            //   title: Text(
            //     'Change Password',
            //     style: TextStyle(
            //       fontSize: 20,
            //     ),
            //   ),
            //   leading: Icon(Icons.lock),
            // ),
            ListTile(
              onTap: () {
                FirebaseAuth.instance.signOut();
                Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));
              },
              title: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
              leading: Icon(Icons.logout, color: Colors.red),
            ),
            ListTile(
              onTap: () {

                context.read<Firebaseauth_method>().deleteAccount(context);

              },
              title: Text(
                'Delete your Account',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
              leading: Icon(Icons.logout, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }

}