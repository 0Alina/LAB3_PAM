import 'package:flutter/material.dart';

class DoctorTabBar extends StatefulWidget {
  const DoctorTabBar({super.key});

  @override
  State<DoctorTabBar> createState() => _DoctorTabBarState();
}

class _DoctorTabBarState extends State<DoctorTabBar> {
  int selectedIndex = 0; // 0 = Info, 1 = History, 2 = Review

  final List<String> tabs = ['Info', 'History', 'Review'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      height: 36,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: List.generate(tabs.length * 2 - 1, (index) {
          if (index.isOdd) {
            // separator
            return Container(
              width: 2,          // grosimea separatorului
              height: 24,        // înălțimea mai mică
              color: Colors.grey.shade400,
            );
          } else {
            int tabIndex = index ~/ 2;
            bool isSelected = tabIndex == selectedIndex;
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = tabIndex;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.all(4), // face tab-ul puțin mai mic decât fundalul gri
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.white : Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    tabs[tabIndex],
                    style: TextStyle(
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      color: isSelected ? Colors.black : Colors.black54,
                    ),
                  ),
                ),
              ),
            );
          }
        }),
      ),
    );
  }
}
