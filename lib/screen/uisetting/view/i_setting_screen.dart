import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/screen_provider.dart';
import 'i_setting_screen.dart';

class i_setting_screen extends StatefulWidget {
  const i_setting_screen({Key? key}) : super(key: key);

  @override
  State<i_setting_screen> createState() => _i_setting_screenState();
}
Screen_provider?a,at;
class _i_setting_screenState extends State<i_setting_screen> {
  @override
  Widget build(BuildContext context) {
    at = Provider.of(context, listen: true);
    a= Provider.of(context, listen: false);

    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.destructiveRed,
          middle: Text(
            "Settings UI",
            style: TextStyle(
              color: CupertinoColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(6),
                child: Text(
                  "Common",
                  style: TextStyle(
                    color: CupertinoColors.destructiveRed,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.language,
                  color: CupertinoColors.black,
                ),
                title: Text(
                  "Language",
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 18,
                  ),
                ),
                trailing: Text(
                  "English",
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 14,
                  ),
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: CupertinoColors.black,
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.cloud_outlined,
                  color: CupertinoColors.black,
                ),
                trailing: Text(
                  "Production",
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 14,
                  ),
                ),
                title: Text(
                  "Environment",
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Account",
                  style: TextStyle(
                    color: CupertinoColors.destructiveRed,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.phone,
                  color: CupertinoColors.black,
                ),
                title: Text(
                  "Phone number",
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: CupertinoColors.black,
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.mail,
                  color: CupertinoColors.black,
                ),
                title: Text(
                  "Email",
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: CupertinoColors.black,
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.output_outlined,
                  color: CupertinoColors.black,
                ),
                title: Text(
                  "Sign out",
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Security",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.phonelink_lock_sharp,
                  color: CupertinoColors.black,
                ),
                title: Text(
                  "Lock app in background",
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 18,
                  ),
                ),
                trailing: CupertinoSwitch(
                  activeColor: Colors.lightBlueAccent.shade100,
                  onChanged: ( value) {
                    a!.change1(value);
                  },
                  value: at!.a1,
                  thumbColor: CupertinoColors.lightBackgroundGray,
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: CupertinoColors.black,
              ),
              CupertinoListTile(
                trailing: CupertinoSwitch(
                    activeColor: CupertinoColors.lightBackgroundGray,
                      onChanged: (bool value) {
                      at!.change2(value);
                    },
                    value: at!.a2,
                    thumbColor: CupertinoColors.lightBackgroundGray),
                leading: Icon(
                  Icons.fingerprint,
                  color: CupertinoColors.black,
                ),
                title: Text(
                  "Use fingerprint",
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: CupertinoColors.black,
              ),
              CupertinoListTile(
                trailing: CupertinoSwitch(
                    activeColor: Colors.lightBlueAccent.shade100,
                    onChanged: (bool value) {
                      at!.change3(value);
                    },
                    value: at!.a3,
                    thumbColor: Colors.lightBlueAccent.shade100),
                leading: Icon(
                  Icons.lock,
                  color: CupertinoColors.black,
                ),
                title: Text(
                  "Change password",
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Misc",
                  style: TextStyle(
                    color: CupertinoColors.lightBackgroundGray,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              CupertinoListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: CupertinoColors.black,
                  size: 15,
                ),
                leading: Icon(
                  Icons.save,
                  color: CupertinoColors.black,
                ),
                title: Text(
                  "Terms of Service",
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: CupertinoColors.black,
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.document_scanner,
                  color: CupertinoColors.black,
                ),
                title: Text(
                  "Open source licenses",
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 18,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: CupertinoColors.black,
                  size: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
