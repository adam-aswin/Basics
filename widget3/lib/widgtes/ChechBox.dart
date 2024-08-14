import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool _ischecked = false;
  bool _ischecked1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Checkbox(
                activeColor: Colors.green,
                value: _ischecked,
                onChanged: (bool? value) {
                  setState(() {
                    _ischecked = value!;
                  });
                },
              ),
              Text("Accept")
            ],
          ),
          CheckboxListTile(
              title: Text("New Box"),
              subtitle: Text(
                "new box for check",
                style: TextStyle(fontSize: 12,),
              ),
              secondary: Icon(Icons.message),
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.green,
              activeColor: Colors.white,
              value: _ischecked1,
              onChanged: (bool? value) {
                setState(() {
                  _ischecked1 = value!;
                });
              })
        ],
      ),
    );
  }
}
