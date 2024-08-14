import 'package:flutter/material.dart';

class DropDownMenuWidget extends StatefulWidget {
  const DropDownMenuWidget({super.key});

  @override
  State<DropDownMenuWidget> createState() => _DropDownMenuWidgetState();
}

class _DropDownMenuWidgetState extends State<DropDownMenuWidget> {
  String? _selectedjob;
  final List<String> _jobs = [
    "FLUUTER",
    "PYTHON",
    "MERN",
    "JAVA",
    "C++",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              hint: Text("Select a job"),
              isExpanded: true,
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              icon: Icon(Icons.filter_1),
              dropdownColor: Colors.grey,
              focusColor: Colors.grey[500],
              underline: Container(
                height: 0,
              ),
              items: _jobs.map(
                (String job) {
                  return DropdownMenuItem(
                    value: job,
                    child: Text(job),
                  );
                },
              ).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedjob = value;
                });
              },
            ),
            Text(_selectedjob == null
                ? 'No job selected'
                : '$_selectedjob is selected')
          ],
        ),
      ),
    );
  }
}
