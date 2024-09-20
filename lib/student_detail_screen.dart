import 'package:flutter/material.dart';
import 'nursery_screen.dart'; // นำเข้าข้อมูลนักเรียนจาก NurseryScreen

class StudentDetailScreen extends StatelessWidget {
  final Student student;

  const StudentDetailScreen({Key? key, required this.student})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(student.name),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        // ใช้ Center เพื่อให้ทุกอย่างอยู่ตรงกลาง
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // จัดแนวตั้งให้อยู่ตรงกลาง
            crossAxisAlignment:
                CrossAxisAlignment.center, // จัดแนวนอนให้อยู่ตรงกลาง
            children: [
              Image.asset(
                'assets/student.png', // รูปนักเรียน
                height: 200,
              ),
              SizedBox(height: 16),
              Text(
                student.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 8),
              Text(
                student.detail,
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "กลับ",
                  style: TextStyle(color: Colors.white), // สีข้อความเป็นสีขาว
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple, // สีพื้นหลังปุ่ม
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
