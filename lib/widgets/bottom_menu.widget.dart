import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  final bool isSelected;
  final String text;
  final IconData icon;

  const BottomMenu({Key key, this.isSelected, this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 40,
        child: Column(
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.green : Colors.black,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 12.8,
                color: isSelected ? Colors.green : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
