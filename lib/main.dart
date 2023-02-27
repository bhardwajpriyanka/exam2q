import 'dart:js';

import 'package:exam2q/home.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>Home(),
      },
    )
  );
}