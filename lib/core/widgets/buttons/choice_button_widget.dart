import 'package:flutter/material.dart';

import 'package:harry_potter_houses_starting/helper.dart';

class ChoiceButtonWidget extends StatefulWidget {
  final VoidCallback onPressed;
  final String label;
  final Color backgroundColor;

  const ChoiceButtonWidget({
    Key key,
    @required this.onPressed,
    @required this.label,
    @required this.backgroundColor,
  }) : super(key: key);

  @override
  _ChoiceButtonWidgetState createState() => _ChoiceButtonWidgetState();
}

class _ChoiceButtonWidgetState extends State<ChoiceButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: widget.backgroundColor,
          textStyle: TextStyle(
            fontSize: 20.0,
          ),
        ),
        onPressed: widget.onPressed,
        child: Text(
          widget.label,
          //TODO: Passo 13 - Use o helper para obter o conteúdo textual de choice1 (escolha 1).
        ),
      ),
    );
  }
}
