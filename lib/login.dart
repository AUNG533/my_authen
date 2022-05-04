// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView(
            children: [
              _buildForm(),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildForm() => Card(
        margin: EdgeInsets.only(top: 80, left: 30, right: 30),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            child: Column(
              children: [
                _logo(),
                SizedBox(height: 22),
                _buildUsernameInput(),
                _buildPasswordInput(),
                SizedBox(height: 28),
                _buildSubmitButton(),
                _buildForgotPasswordButton(),
              ],
            ),
          ),
        ),
      );

  Widget _logo() => Image.asset(
        ("assets/header_main.png"),
        fit: BoxFit.cover,
      );

  Widget _buildUsernameInput() => TextFormField(
        decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'example@gmail.com',
            icon: Icon(Icons.email)),
        keyboardType: TextInputType.emailAddress,
        validator: _validateEmail,
        onSaved: (String? value) {},
        onFieldSubmitted: (String value) {},
      );

  Widget _buildPasswordInput() => TextFormField(
        decoration:
            InputDecoration(labelText: 'Password', icon: Icon(Icons.lock)),
        obscureText: true,
        validator: _validatePassword,
        onSaved: (String? value) {},
      );

  Widget _buildSubmitButton() => Container(
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          color: Colors.blue,
          onPressed: _submit,
          child: Text(
            "login".toUpperCase(),
            style: TextStyle(color: Colors.white),
          ),
        ),
      );

  Widget _buildForgotPasswordButton() => Container(
    width: MediaQuery.of(context).size.width,
    child: FlatButton(
      splashColor: Colors.blue.shade500,
      onPressed: _submit,
      child: Text(
        "Forgot password",
        style: TextStyle(color: Colors.black54),
      ),
    ),
  );

  void _submit() {}



  String? _validateEmail(String? value) {
    return null;
  }

  String? _validatePassword(String? value) {
    return null;
  }
}
