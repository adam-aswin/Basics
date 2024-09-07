import 'package:flutter/material.dart';
import 'package:transitions/pages/Rotationtransition.dart';
import 'package:transitions/pages/ScaleTransition.dart';
import 'package:transitions/pages/fadetransition.dart';
import 'package:transitions/pages/sizedtransition.dart';

void main() {
  runApp(MaterialApp(
    // home: SizedtransitionExample(),
    // home: Fadetransition(),
    // home: ScaletransitionExample(),
    home: RotationtransitionExample(),
  ));
}
