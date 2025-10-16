import 'package:flutter/material.dart';

class MostDecoratedDoctorsWidget extends StatelessWidget {
  const MostDecoratedDoctorsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Text(
              "Most Decorated Doctors",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Spacer(),
            Text(
              "View all >",
              style: TextStyle(
                fontSize: 14,
                color: Colors.teal,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Center(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Colors.grey.shade300,
                width: 1.5,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Cerc cu imagine
                ClipOval(
                  child: SizedBox(
                    width: 60,
                    height: 60,
                    child: Image.asset(
                      'assets/images/img.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                // Text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Dr. Name Four",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Telemedicine",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
