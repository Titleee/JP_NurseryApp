import 'package:flutter/material.dart';
import 'nursery_screen.dart'; // นำเข้าหน้าหลัก

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nursery App',
      home: NurseryScreen(), // เริ่มต้นที่หน้าหลัก
    );
  }
}
