import 'package:flutter/material.dart';
import 'student_detail_screen.dart'; // นำเข้าหน้าแสดงรายละเอียดของนักเรียน

class NurseryScreen extends StatelessWidget {
  final List<Student> students = [
    Student(name: 'นักเรียน 1', detail: 'สมบูรณ์ ใจดี\n081-7894561'),
    Student(name: 'นักเรียน 2', detail: 'นาริ ใจดี\n081-7894562'),
    Student(name: 'นักเรียน 3', detail: 'นงลักษณ์ รักทอง\n081-7894563'),
    // เพิ่มนักเรียนตามต้องการ
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Japan Nursery App.'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.75,
          ),
          itemCount: students.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StudentDetailScreen(
                      student: students[index],
                    ),
                  ),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          'assets/student.png', // ใส่รูปนักเรียน
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        students[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 4),
                      Text(
                        students[index].detail,
                        style: TextStyle(fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Student {
  final String name;
  final String detail;

  Student({required this.name, required this.detail});
}
