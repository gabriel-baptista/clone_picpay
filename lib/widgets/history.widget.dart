import 'package:flutter/material.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    //estilizando a lista horizontal da homepage
    return Container(
      width: 100,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black26),
            ),
            child: FlutterLogo(),
          ),
          SizedBox(
            height: 5,
          ),
          // estilizandoo texto abaixo da lista horizontal
          Flexible(
            child: Text(
              'Auxílio Emergencial',
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
