import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Center(
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 26,
                    ),
                    prefixIconConstraints: BoxConstraints(
                      minWidth: 40,
                      minHeight: 40,
                    ),
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(width: 10),

          Material( // pt efect vizual
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(12),
            child: InkWell( // pt face widgetul click-abil
              borderRadius: BorderRadius.circular(12),
              onTap: () {
              },
              child: Container(
                height: 48,
                width: 52,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Iconsax.scanner,
                  size: 24,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
