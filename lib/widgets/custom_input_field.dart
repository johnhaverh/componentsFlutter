import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String hintText;
  final String labelText;
  final String helperText;
  final IconData icon;
  final IconData suffixIcon;
  final IconData preffixIcon;
  final String counterText;

  const CustomInputField({ Key key, this.hintText, this.labelText, this.helperText, this.icon, this.suffixIcon, this.preffixIcon, this.counterText,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        //print(value);
      },
      validator: (value) {
        if (value == null ) return 'requerido';
            return value.length < 3 ? 'Minimo 3 letras':null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: counterText,
        //prefixIcon: == prefixIcon null ? null: Icon(prefixIcon),
        suffixIcon: suffixIcon == null ? null: Icon(suffixIcon),
        icon: icon == null ? null: Icon(icon),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(10),
        //     topRight: Radius.circular(10)
        //     )
        // ),

      ),
    );
  }
}