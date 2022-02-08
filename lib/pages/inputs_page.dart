import 'package:flutter/material.dart';
import 'package:componentsflutter/widgets/widgets.dart';

class InputsPage extends StatelessWidget {
   
  const InputsPage({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues ={
      'first_name': '',
      'last_name' : '',
      'email'     : '',
      'passwrod'  : '',
      'role'      : ''
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs & Froms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Form(
            key:myFormKey,            
            child: Column(
              children: [
                CustomInputField(labelText: 'Nombre', hintText: 'Nombre del usuario',textCapitalization: TextCapitalization.words, formProperty: 'first_name', formValues: formValues,),
                SizedBox(height:30),
                CustomInputField(labelText: 'Apellido', hintText: 'Apellido del usuario',textCapitalization: TextCapitalization.words, formProperty: 'last_name', formValues: formValues,),
                SizedBox(height:30),
                CustomInputField(labelText: 'Email', hintText: 'Email del usuario',keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                SizedBox(height:30),
                CustomInputField(labelText: 'Password', hintText: 'Password del usuario',obscureText: true, formProperty: 'password', formValues: formValues,),
                SizedBox(height:30),

                DropdownButtonFormField<String>(
                 items: [
                   DropdownMenuItem(value:'Admin', child: Text('Admin'), ),
                   DropdownMenuItem(value:'PM', child: Text('PM'), ),
                   DropdownMenuItem(value:'Developer', child: Text('Developer'), ),
                   DropdownMenuItem(value:'Tester', child: Text('Tester'), ),
                 ],
                 onChanged: (value) {
                   print(value);
                   formValues['role'] = value;
                 },
                ),
                SizedBox(height:30),

                ElevatedButton(
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))
                  ),
                  onPressed: (){
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState.validate()) {
                      print('Invalid Form') ;
                      return;}
                    print(formValues);
                  }, 
                  )
              ],
            ),
          ),
        )
      )
    );
  }
}
