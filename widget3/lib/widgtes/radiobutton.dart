import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String? _isSelected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RadioListTile(
                title: Text("FLUTTER"),
                value: "FLUTTER",
                groupValue: _isSelected,
                onChanged: (String? value) {
                  setState(() {
                    _isSelected = value;
                  });
                }),
            RadioListTile(
                title: Text("MERN"),
                value: "MERN",
                groupValue: _isSelected,
                onChanged: (String? value) {
                  setState(() {
                    _isSelected = value;
                  });
                }),
            RadioListTile(
                title: Text("JAVA"),
                value: "JAVA",
                groupValue: _isSelected,
                onChanged: (String? value) {
                  setState(() {
                    _isSelected = value;
                  });
                }),
            RadioListTile(
                title: Text("PYTHON"),
                value: "PYTHON",
                groupValue: _isSelected,
                onChanged: (String? value) {
                  setState(() {
                    _isSelected = value;
                  });
                }),
            RadioListTile(
                title: Text("WORDPRESS"),
                value: "WORDPRESS",
                groupValue: _isSelected,
                onChanged: (String? value) {
                  setState(() {
                    _isSelected = value;
                  });
                }),
            SizedBox(
              height: 20,
            ),
            Text(_isSelected == null
                ? "no job is selected"
                : "selected job: ${_isSelected}")
          ],
        ),
      ),
    );
  }
}
