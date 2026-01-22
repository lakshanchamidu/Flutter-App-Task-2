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
  int? _pressedIndex;

  final List<String> _labels = ["Home", "Search", "Calenda", "Profile"];

  static const double navWidth = 200;
  static const double expandedNavWidth = 260;
  static const double iconSize = 36;

  @override
  Widget build(BuildContext context) {
    final bool anySelected = widget.selectedIndex != null;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      width: anySelected ? expandedNavWidth : navWidth,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: RColors.secondColor,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(_icons.length, (i) {
            final bool active = widget.selectedIndex == i;
            final bool pressed = _pressedIndex == i;

            return GestureDetector(
              onTapDown: (_) => setState(() => _pressedIndex = i),
              onTapUp: (_) => setState(() => _pressedIndex = null),
              onTapCancel: () => setState(() => _pressedIndex = null),
              onTap: () => widget.onTap?.call(i),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeOut,
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                decoration: BoxDecoration(
                  color: active
                      ? RColors.primaryColor.withOpacity(0.2)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 150),
                      width: iconSize,
                      height: iconSize,
                      transform: Matrix4.identity()..scale(pressed ? 0.9 : 1.0),
                      decoration: BoxDecoration(
                        color: active ? Colors.transparent : Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: active ? 0 : 1,
                          color: active
                              ? Colors.transparent
                              : RColors.borderColor,
                        ),
                      ),
                      child: Icon(
                        _icons[i],
                        size: 22,
                        color: active ? RColors.textColor : RColors.borderColor,
                      ),
                    ),

                    if (active)
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text(
                          _labels[i],
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: RColors.textColor,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

const List<IconData> _icons = [
  Icons.home_outlined,
  Icons.search_outlined,
  Icons.calendar_today_outlined,
  Icons.person_outline,
];
