import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:system_app/screen/provider/screen_provider.dart';

import '../uisetting/view/i_setting_screen.dart';

class ui_screen extends StatefulWidget {
  const ui_screen({Key? key}) : super(key: key);

  @override
  State<ui_screen> createState() => _ui_screenState();
}

class _ui_screenState extends State<ui_screen> {
 Screen_provider?at,a;
  @override
  Widget build(BuildContext context) {
   at = Provider.of(context, listen: true);
    a = Provider.of(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:
          Text("Settings UI"),
          centerTitle: true,

          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Common",
                      style: TextStyle(
                          color: Colors.red.shade700,
                          fontWeight: FontWeight.bold,letterSpacing: 1),
                    ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text("Language"),
                subtitle: Text("English"),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.cloud),
                title: Text("Environment"),
                subtitle: Text("Production"),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Account",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                ),
              ),
              SizedBox(height: 10),
              ListTile(leading: Icon(Icons.call), title: Text("Phone number")),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Sign Out"),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Security",
                      style: TextStyle(fontWeight: FontWeight.bold),
                     ),
                    ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.phonelink_lock),

                title: Text("Lock app in background"),
                trailing: Switch(
                  activeColor: Colors.red.shade700,
                  onChanged: (bool value) {
                    at!.change3(value);
                  },
                  value: at!.a3,
                ),
              ),

              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fingerprint),
                title: Text("Use fingerprint"),
                trailing: Switch(
                  activeColor: Colors.red.shade700,
                  onChanged: ( value) {
                    a!.change1(value);
                  },
                  value: at!.a1,
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.lock),
                title: Text("Change password"),
                trailing: Switch(
                  activeColor: Colors.red.shade700,
                  onChanged: (bool value) {
                    at!.change2(value);
                  },
                  value: at!.a2,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Music",
                      style: TextStyle(
                          color: Colors.red.shade700, fontWeight: FontWeight.bold,letterSpacing: 1),
                    ),
                ),
              ),
          ],
          ),
        ),
        ),
      );
  }
}