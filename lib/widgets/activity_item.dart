import 'package:flutter/material.dart';

class ActivityItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: FlutterLogo(),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Você ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      children: [
                        TextSpan(
                          text: 'enviou um ',
                          style: TextStyle(fontWeight: FontWeight.normal),
                        ),
                        TextSpan(text: 'PIX'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Alguna descrição aqui na atividade',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Text(
                    'R\$ 50,00',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    '   |   ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Icon(
                    Icons.lock,
                    color: Colors.black38,
                    size: 15,
                  ),
                  Text(
                    '7 dias atrás',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.black38,
                  ),
                  Text('0'),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.black38,
                  ),
                  Text('0'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
