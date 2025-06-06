import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Dashboard_Sreen extends StatelessWidget {
  final int totalCalories = 1960;
  final double percent = 0.7; // تمثل نسبة التقدم في الدائرة
  const Dashboard_Sreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'My Progress',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _arrowInfo(Icons.keyboard_arrow_up, "0", "supplied"),
                        _arrowInfo(Icons.keyboard_arrow_down, "0", "burned"),
                      ],
                    ),
                    SizedBox(height: 20),
                    CircularPercentIndicator(
                      radius: 80.0,
                      lineWidth: 13.0,
                      animation: true,
                      percent: percent,
                      center: Text(
                        "$totalCalories\nkcal",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22.0),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Colors.greenAccent,
                      backgroundColor: Colors.grey.shade200,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _nutrientInfo("carbs", "0/419 g"),
                        _nutrientInfo("fat", "0/49 g"),
                        _nutrientInfo("protein", "0/119 g"),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _arrowInfo(IconData icon, String value, String label) {
    return Column(
      children: [
        Icon(icon, size: 24),
        Text(value, style: TextStyle(fontSize: 16)),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }

  Widget _nutrientInfo(String label, String value) {
    return Column(
      children: [
        CircleAvatar(
          radius: 10,
          backgroundColor: Colors.grey.shade300,
        ),
        SizedBox(height: 4),
        Text(value, style: TextStyle(fontSize: 12)),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }
}
