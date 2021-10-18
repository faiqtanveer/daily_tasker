import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class ButtonsPage extends StatefulWidget {
  @override
  _ButtonsPageState createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Custom Dialuge Button"),
              onPressed: () {
                showDialogWidget(context);
              },
            ),
            ElevatedButton(
              child: Text("Bottom sheet"),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 250,
                      color: Colors.cyan,
                      child: TextButton(
                        child: Text(" Tap on me to close"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ButtonsPage(),
                            ),
                          );
                        },
                      ),
                    );
                  },
                );
              },
            ),
            ElevatedButton(
              child: Text('Simple Dialog'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SimpleDialog(
                      backgroundColor: Colors.yellow,
                      children: [
                        TextButton(
                          child: Text(" Tap on me to close"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ButtonsPage(),
                              ),
                            );
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

showDialogWidget(BuildContext context) {
  AlertDialog alert = AlertDialog(
    title: Text("Confirmation"),
    content: Text("would you really like to logout?"),
    actions: [
      TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ButtonsPage(),
              ),
            );
          },
          child: Text("cancel")),
      TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ButtonsPage(),
              ),
            );
          },
          child: Text("logout")),
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
