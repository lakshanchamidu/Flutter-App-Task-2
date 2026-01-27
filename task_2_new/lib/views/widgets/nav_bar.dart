import 'package:flutter/material.dart';
import 'package:task_2_new/Theme/colors.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key, this.selectedIndex, this.onTap});

  final int? selectedIndex;
  final void Function(int)? onTap;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int? _pressedIndex;

  final List<String> _labels = ["Home", "Search", "Calendar", "Profile"];

  static const double navWidth = 210;
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
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
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
          mainAxisSize: MainAxisSize.max,
          children: List.generate(_assets.length, (i) {
            final bool active = widget.selectedIndex == i;
            final bool pressed = _pressedIndex == i;

            return Expanded(
              flex: active ? 2 : 1,
              child: GestureDetector(
                onTapDown: (_) => setState(() => _pressedIndex = i),
                onTapUp: (_) => setState(() => _pressedIndex = null),
                onTapCancel: () => setState(() => _pressedIndex = null),
                onTap: () => widget.onTap?.call(i),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeOut,
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  decoration: BoxDecoration(
                    color: active
                        ? RColors.primaryColor.withOpacity(0.2)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          LayoutBuilder(
                            builder: (context, constraints) {
                              final double avail = constraints.maxWidth.isFinite
                                  ? constraints.maxWidth
                                  : iconSize;
                              final double size = avail < iconSize ? avail : iconSize;

                              return AnimatedContainer(
                                duration: const Duration(milliseconds: 150),
                                width: size,
                                height: size,
                                transform: Matrix4.identity()..scale(pressed ? 0.9 : 1.0),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: active ? 0 : 1,
                                    color: active ? Colors.transparent : RColors.borderColor,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Image.asset(
                                    _assets[i],
                                    width: size - 12 > 0 ? size - 12 : 0,
                                    height: size - 12 > 0 ? size - 12 : 0,
                                    color: active ? RColors.textColor : RColors.borderColor,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),

                      if (active)
                        Positioned(
                          left: iconSize + 8,
                          top: 0,
                          child: Material(
                            color: Colors.transparent,
                            child: Container(
                              height: 40,
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                color: RColors.primaryColor.withOpacity(0.95),
                                borderRadius: BorderRadius.circular(14),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.12),
                                    blurRadius: 6,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                _labels[i],
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

const List<String> _assets = [
  'assets/icons/home_icon.png',
  'assets/icons/search_icon.png',
  'assets/icons/calender_icon.png',
  'assets/icons/profile_icon.png',
];
