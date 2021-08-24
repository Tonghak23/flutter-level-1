import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _hide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InkWell(
          child: _buildBody,
          onTap: (){
            FocusScope.of(context).requestFocus(FocusNode());
          },
        ),
    );
  }

  get _buildBody => Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: _buildPassLogin,
  );

  get _buildEmailLogin => Container(
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(10),
    ),
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.all(20),
    child: TextField(
          style: TextStyle(color: Colors.white),
          autocorrect: false,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: "Enter email",
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: IconButton(icon: Icon(Icons.email),onPressed: (){},),
            prefix: Text(""),
            border: InputBorder.none,
          ),
    ),
  );

  get _buildPassLogin => Container(
    decoration: BoxDecoration(
      color: Colors.blueAccent[400],
      borderRadius: BorderRadius.circular(10),
    ),
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.all(20),
    child: TextField(
      style: TextStyle(color: Colors.white),
      autocorrect: false,
      obscureText: _hide,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        hintText: "Enter password",
        hintStyle: TextStyle(color: Colors.white),
        prefixIcon: IconButton(icon: Icon(Icons.vpn_key_rounded),onPressed: (){

        },),
        border: InputBorder.none,
        suffixIcon: IconButton(icon: Icon(_hide ? Icons.visibility : Icons.visibility_off, color: Colors.white,),onPressed: (){
          setState(() {
            _hide=!_hide;
          });
        },)
      ),
    ),
  );

  get _buildRiasedButton => SizedBox(
    height: 50.0,
    width: 180.0,
    child: RaisedButton(
        color: Colors.blueAccent,
        onPressed: () {  },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20),),
    ),
  );

  get _buildMaterialButton => SizedBox(
    height: 50.0,
    width: 180.0,
    child: MaterialButton(
      color: Colors.blueAccent,
      onPressed: () {  },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20),),
    ),
  );
}
