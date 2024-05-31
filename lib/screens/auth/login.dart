import 'package:flutter/material.dart';
import '../../services/firebase/firebaseservice.dart';
import 'signup.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen>{
  //textfield controllers
  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();

  //password visibility bool
  var _passwordVisibility = false;


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
              textInputAction: TextInputAction.done,
              obscureText: _passwordVisibility,
              controller: _passwordController,
              decoration: InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.all(8.0),
                  prefixIcon: IconButton(
                    icon: Icon((_passwordVisibility)? Icons.visibility : Icons.visibility_off),
                    onPressed: (){
                      setState(() {
                        _passwordVisibility = !_passwordVisibility;
                      }
                      );
                    },
                  ),
                  hintText: "Password",
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
                ),
              ],
            ),


            SizedBox(height: 13,),


            //button area
            ElevatedButton(
              onPressed: () => FirebaseService().Login(context, _emailController.text.trim(), _passwordController.text.trim()),
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  elevation: 0,
                  minimumSize: Size(200, 45),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  )
              ),
            ),

            SizedBox(height: 5,),


            //text area
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    "Don't have an account? "
                ),

                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen())),
                  child: Text(
                    "Signup",
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