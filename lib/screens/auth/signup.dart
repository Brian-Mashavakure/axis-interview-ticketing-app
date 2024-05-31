import 'package:flutter/material.dart';
import '../../services/firebase/firebaseservice.dart';

import 'login.dart';


class SignupScreen extends StatefulWidget{
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen>{
  //textfield controllers
  var _emailController = TextEditingController();
  var _nameController = TextEditingController();
  var _passwordController = TextEditingController();
  var _confirmPasswordController = TextEditingController();

  //password visibility bool
  var _passwordVisibility = false;
  var _confirmPasswordVisibility = false;

  //confirm password function
  bool confirmPassword(){
    if(_passwordController.text == _confirmPasswordController.text){
      return true;
    }else{
      return false;
    }
  }



  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //textfields part
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.all(8.0),
                  prefixIcon: Icon(Icons.email),
                  hintText: "Name",
                  labelText: "Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(width: 2.0, color: Color(0xFF7e9476))
                  )
              ),
              textInputAction: TextInputAction.next,
            ),

            SizedBox(height: 15,),

            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.all(8.0),
                  prefixIcon: Icon(Icons.email),
                  hintText: "Email",
                  labelText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(width: 2.0, color: Color(0xFF7e9476))
                  )
              ),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
            ),

            SizedBox(height: 15,),


            TextField(
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.next,
              obscureText: _passwordVisibility,
              controller: _passwordController,
              decoration: InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.all(8.0),
                  prefixIcon: IconButton(
                    icon: Icon((_passwordVisibility)? Icons.visibility_off : Icons.visibility),
                    onPressed: (){
                      setState(() {
                        _passwordVisibility = !_passwordVisibility;
                      }
                      );
                    },
                  ),
                  hintText: "Password",
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(width: 2.0, color: Color(0xFF7e9476))
                  )
              ),
            ),

            SizedBox(height: 15,),

            TextField(
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              obscureText: _confirmPasswordVisibility,
              controller: _confirmPasswordController,
              decoration: InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.all(8.0),
                  prefixIcon: IconButton(
                    icon: Icon((_confirmPasswordVisibility)? Icons.visibility_off : Icons.visibility),
                    onPressed: (){
                      setState(() {
                        _confirmPasswordVisibility = !_confirmPasswordVisibility;
                      }
                      );
                    },
                  ),
                  hintText: "Confirm Password",
                  labelText: "Confirm Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(width: 2.0, color: Color(0xFF7e9476))
                  )
              ),
            ),

            SizedBox(height: 3,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Text(
                    "forgot password?",
                    style: TextStyle(
                        color: Colors.blueGrey,
                        decoration: TextDecoration.underline
                    ),
                  ),
                )
              ],
            ),


            SizedBox(height: 10,),


            //button area
            ElevatedButton(
              onPressed: (){
                if(confirmPassword()){
                  FirebaseService().SignUp(context,_nameController.text.trim(), _emailController.text.toString().trim(), _passwordController.text.trim());
                }
              },
              child: Text("Sign Up"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  elevation: 0,
                  minimumSize: Size(200, 45),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  )
              ),
            ),

            SizedBox(height: 3,),


            //text area
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    "Don't have an account? "
                ),

                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen())),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.blueGrey,
                        decoration: TextDecoration.underline
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}