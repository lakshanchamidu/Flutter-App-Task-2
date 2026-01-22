import 'package:flutter/material.dart';
import 'package:task_2/data/constant.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key, this.selectedIndex, this.onTap});

  final int? selectedIndex;
  final void Function(int)? onTap;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List<String> _labels = ["Home", "Search", "Calendar", "Profile"];

  @override
  Widget build(BuildContext context) {
    // Default to no selection if selectedIndex is null
    final int? currentIndex = widget.selectedIndex;
    
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFF4A4A4A),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(_icons.length, (i) {
          final bool active = currentIndex == i;

          return GestureDetector(
            onTap: () => widget.onTap?.call(i),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              margin: const EdgeInsets.symmetric(horizontal: 2),
              padding: EdgeInsets.symmetric(
                horizontal: active ? 16 : 12,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: active ? const Color(0xFFE0E0E0) : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    _icons[i],
                    size: 18,
                    color: active ? const Color(0xFF2A2A2A) : const Color(0xFFB0B0B0),
                  ),
                  if (active) const SizedBox(width: 8),
                  if (active)
                    Text(
                      _labels[i],
                      style: const TextStyle(
                        color: Color(0xFF2A2A2A),
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

const List<IconData> _icons = [
  Icons.home,
  Icons.search,
  Icons.calendar_today,
  Icons.person,
];
