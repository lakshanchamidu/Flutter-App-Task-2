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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 8),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(_icons.length, (i) {
          final int? sel = widget.selectedIndex;
          final bool active = sel != null && i == sel;
          final bool pressed = _pressedIndex == i;
          return GestureDetector(
            onTapDown: (_) => setState(() => _pressedIndex = i),
            onTapUp: (_) => setState(() => _pressedIndex = null),
            onTapCancel: () => setState(() => _pressedIndex = null),
            onTap: () => widget.onTap?.call(i),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 150),
              width: 36,
              height: 36,
              transform: Matrix4.identity()..scale(pressed ? 0.9 : 1.0),
              decoration: BoxDecoration(
                color: active 
                    ? RColors.primaryColor.withOpacity(0.2) 
                    : pressed 
                        ? RColors.primaryColor.withOpacity(0.1)
                        : Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  width: active ? 2 : 1, 
                  color: active ? RColors.primaryColor : RColors.borderColor
                ),
              ),
              child: Icon(
                _icons[i],
                size: 18,
                color: active ? RColors.primaryColor : RColors.borderColor,
              ),
            ),
          );
        }),
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
