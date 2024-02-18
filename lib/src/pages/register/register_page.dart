import 'package:flutter/material.dart';
import 'package:flutter_delivery/src/pages/register/register_controller.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {

  RegisterController con = Get.put(RegisterController());
 //const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(   // posiciona elementos uno encima del otro
        children:[
          _backgroundCover(context),
          _boxForm(context),
          _imageUser(),
          _buttonBack(),

        ],
      ),
    );
  }

  Widget _buttonBack(){
    return SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 80, left: 20),
          child: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 30,
            ),
          ),
        )
    );
  }

  Widget _backgroundCover(BuildContext context){
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.35,
      color: Colors.amber,
    );
  }

  Widget _boxForm(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3, left: 50, right: 50),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black54,
                blurRadius: 15,
                offset: Offset(0, 0.75)
            )
          ]
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _textYourInfo(),
            _textFieldEmail(),
            _textFieldName(),
            _textFieldLastName(),
            _textFieldPhoneNumber(),
            _textFieldPassword(),
            _textFieldCorfirmPassword(),
            _buttonRegister()
          ],
        ),
      ),
    );
  }

  Widget _textFieldEmail(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: con.emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText:'email',
            prefixIconColor: Colors.lightBlue,
            prefixIcon: Icon(Icons.email)
        ),
      ),
    );
  }
  Widget _textFieldName(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: con.nameController,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText:'Name',
            prefixIconColor: Colors.lightBlue,
            prefixIcon: Icon(Icons.person)
        ),
      ),
    );
  }
  Widget _textFieldLastName(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: con.lastNameController,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText:'Last Name',
            prefixIconColor: Colors.lightBlue,
            prefixIcon: Icon(Icons.person_outlined)
        ),
      ),
    );
  }
  Widget _textFieldPhoneNumber(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: con.phoneController,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            hintText:'Phone Number',
            prefixIconColor: Colors.lightBlue,
            prefixIcon: Icon(Icons.phone)
        ),
      ),
    );
  }

  Widget _textFieldPassword(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: con.passwordController,
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          hintText:'Password',
          prefixIconColor: Colors.lightBlue,
          prefixIcon: Icon(Icons.lock),
        ),
      ),
    );
  }
  Widget _textFieldCorfirmPassword(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: con.confirmPasswordController,
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          hintText:'Corfim Password',
          prefixIconColor: Colors.lightBlue,
          prefixIcon: Icon(Icons.lock_outline),
        ),
      ),
    );
  }

  Widget _buttonRegister(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: ElevatedButton(
          onPressed: () => con.register(),
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 10 ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )
          ) ,
          child: Text(
            'SING IN',
            style: TextStyle(
                color: Colors.black
            ),
          )
      ),
    );
  }
  Widget _imageUser(){
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 35),
        alignment: Alignment.topCenter,
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/img/user.jpg'),
          radius: 70,
        )
      ),
    );
  }

  Widget _textYourInfo(){
    return Container(
      margin: EdgeInsets.only(top: 40,bottom: 30),
      child: Text(
        'REGISTRATION FORM',
        style: TextStyle(
            color: Colors.black
        ),
      ),
    );
  }

}
