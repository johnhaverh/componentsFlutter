import 'package:flutter/material.dart';

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
              TextFormField(
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
                  hintText: "Texto de ayuda",
                  labelText: "Nombre",
                  helperText: "Solo letras",
                  counterText: "20",
                  //prefixIcon: Icon(Icons.ac_unit_rounded),
                  suffixIcon: Icon(Icons.ac_unit),
                  icon: Icon(Icons.admin_panel_settings_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                      )
                  ),

                ),
              )
            ],
          ),
        )
      )
    );
  }
}