import 'package:flutter/material.dart';

class QuickActionsWidget extends StatelessWidget {
  const QuickActionsWidget({super.key});

  // --- CARD MARE ---
  Widget _buildLargeAction(String img, String title) {
    return Container(
      width: 175,
      height: 137,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: ClipRRect( // decupează folosind un dreptunghi
        borderRadius: BorderRadius.circular(10),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                img,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
                width: double.infinity,
              ),
            ),
            Container(
              height: 31,
              width: double.infinity,
              alignment: Alignment.center,
              color: Colors.white,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- CARD MIC ---
  Widget _buildSmallAction(String img, String title) {
    return Container(
      width: 117,
      height: 98,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                img,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
                width: double.infinity,
              ),
            ),
            Container(
              height: 23,
              width: double.infinity,
              alignment: Alignment.center,
              color: Colors.white,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // --- PRIMUL RAND: 2 carduri mari ---
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildLargeAction('assets/images/book_appointment.png', 'Book Appointment'),
              _buildLargeAction('assets/images/instant_video_consult.png', 'Instant Video Consult'),
            ],
          ),
          const SizedBox(height: 12),

          // --- AL DOILEA RAND: 3 carduri mici ---
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildSmallAction('assets/images/medicines.png', 'Medicines'),
              _buildSmallAction('assets/images/lab_tests.png', 'Lab Tests'),
              _buildSmallAction('assets/images/emergency.png', 'Emergency'),
            ],
          ),
        ],
      ),
    );
  }
}
