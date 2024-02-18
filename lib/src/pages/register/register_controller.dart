import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController{



  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void register(){
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String name = nameController.text;
    String lastName = lastNameController.text;
    String phone = phoneController.text;
    String confirmPassword = confirmPasswordController.text.trim();

    //print('Email ${email}');
    //print('Password ${password}');

    //Get.snackbar('Email', email);
    //Get.snackbar('Password', password);

    if (isValidForm(email, name, lastName, phone, password, confirmPassword)){
      Get.snackbar('Formulario Valido','Listo para envio de HTTP');
    }

  }

  bool isValidForm(
      String email,
      String name,
      String lastName,
      String phone,
      String password,
      String confirmPassword
      ){


    if (email.isEmpty){
      Get.snackbar('Formulario no Valido', 'Debes ingresar el email');
      return false;
    }
    if(!GetUtils.isEmail(email)){
      Get.snackbar('Formulario no Valido', 'el email no es valido');
      return false;
    }
    if (name.isEmpty){
      Get.snackbar('Formulario no Valido', 'Debes ingresar el nombre');
      return false;
    }
    if (lastName.isEmpty){
      Get.snackbar('Formulario no Valido', 'Debes ingresar el Apellido');
      return false;
    }
    if (phone.isEmpty){
      Get.snackbar('Formulario no Valido', 'Debes ingresar el telefono');
      return false;
    }
    if (password.isEmpty){
      Get.snackbar('Formulario no Valido', 'Debes ingresar el password');
      return false;
    }
    if (confirmPassword.isEmpty){
      Get.snackbar('Formulario no Valido', 'Debes confirmar el password');
      return false;
    }
    if(password != confirmPassword){
      Get.snackbar('Formulario no Valido', 'las Contraseñas no coinciden');
      return false;
    }
    return true;


  }

}