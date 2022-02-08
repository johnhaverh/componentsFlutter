import 'package:flutter/material.dart';
import 'package:componentsflutter/widgets/widgets.dart';

class InputsPage extends StatelessWidget {
   
  const InputsPage({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs & Froms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
            children: [
              CustomInputField(labelText: 'Nombre', hintText: 'Nombre del usuario',),
              SizedBox(height:30),
              CustomInputField(labelText: 'Apellido', hintText: 'Apellido del usuario',),
              SizedBox(height:30),
              CustomInputField(labelText: 'Email', hintText: 'Email del usuario',keyboardType: TextInputType.emailAddress),
              SizedBox(height:30),
              CustomInputField(labelText: 'Password', hintText: 'Password del usuario',obscureText: true),
              SizedBox(height:30),
            ],
          ),
        )
      )
    );
  }
}
