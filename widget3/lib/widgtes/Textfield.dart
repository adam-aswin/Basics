import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: TextField(
          onChanged: (value) {
            print(value);
          },
          onTap: () {
            print("Tapped");
          },
          enabled: true,
          keyboardType: TextInputType.text,
          maxLines: 1,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.green,
                  width: 2,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              icon: Icon(Icons.more),
              suffixIcon: Icon(Icons.account_box),
              hintText: "Hint text",
              suffixText: "Suffix text",
              suffixStyle: TextStyle(color: Colors.blue),
              labelText: "Label text",
              helperText: "Helper text"),
        ),
      ),
    );
  }
}
