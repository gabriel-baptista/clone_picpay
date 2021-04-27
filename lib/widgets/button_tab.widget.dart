import 'package:flutter/material.dart';

// botoõe de sugestões e de favoritos
class ButtonTab extends StatelessWidget {
  final bool isSelected;
  final String text;
  final Color color;

  //metodo construtor
  const ButtonTab({
    this.isSelected,
    this.text,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: isSelected
          ? BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: color,
                ),
              ),
            )
          : null,
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? color : Colors.black,
          ),
        ),
        // muda a cor que aparece quando clica no botão
        style: TextButton.styleFrom(
          primary: color,
        ),
      ),
    );
  }
}
