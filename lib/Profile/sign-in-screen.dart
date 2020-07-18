import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:tourismo_fyp/Profile/Registraion-screen.dart';
import 'package:tourismo_fyp/Reused/constant.dart';

class SignInScreen extends StatefulWidget {

  final Function toggleView;
  SignInScreen({this.toggleView});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  String _email="";
  String _password="";
  final _formKey=GlobalKey<FormState>();
  bool _hidePassword=true;
  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'passwords must have at least one special character')
  ]);
  final  emailValidator = MultiValidator([
    RequiredValidator(errorText: 'Email is required'),
    PatternValidator(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$', errorText: 'Invalid Email')
  ]);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black,Color.fromRGBO(36, 42, 78, 1)]
            )
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Flexible(
                flex: 3,
                child: Center(child: Image.asset("images/story.png",color: Colors.white,height: 80,width: 80,))),
            Flexible(
                flex: 1,
                child: Text("Turismo",style: TextStyle(
                    color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold
                ),)),
            Spacer(flex: 1,),
            Flexible(
                flex: 7,
                child:ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    width: 320,
                    height: 370,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Form(
                          key: _formKey,
                          child:Column(
                            children: <Widget>[
                              SizedBox(height: 20,),
                              TextFormField(
                                decoration: textInputDecoration.copyWith(hintText: "Email",prefixIcon:Icon(Icons.email,color: Colors.white,)),
                                validator: emailValidator,
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (val){
                                  setState(() {
                                    _email=val;
                                  });
                                },
                              ),
                              SizedBox(height: 15,),
                              TextFormField(
                                obscureText: _hidePassword,
                                decoration: textInputDecoration.copyWith(
                                    hintText: "Password",
                                    prefixIcon:Icon(Icons.lock,color: Colors.white,),
                                    suffixIcon: _hidePassword ? IconButton(
                                      icon:Icon(Icons.visibility,color: Colors.white,), onPressed: () {
                                      setState(() {
                                        _hidePassword=!_hidePassword;
                                      });
                                    },

                                    ) : IconButton(
                                      icon:Icon(Icons.visibility_off,color: Colors.white,),
                                      onPressed: (){
                                        setState(() {
                                          _hidePassword=!_hidePassword;
                                        });
                                      },

                                    )
                                ),
                                validator: passwordValidator,
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (val){
                                  setState(() {
                                    _password=val;
                                  });
                                },
                              ),
                              SizedBox(height: 20,),
                              RaisedButton(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius:BorderRadius.circular(18.0),
                                ),
                                color: Colors.black45,
                                child: Icon(Icons.arrow_forward,color:
                                Colors.white,size: 40,),
                                onPressed: () async{
                                  if(_formKey.currentState.validate()){

                                  }
                                },
                              ),
                              SizedBox(height: 15,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  RaisedButton(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          bottomLeft: Radius.circular(30)
                                      ),
                                    ),
                                    color: Colors.black45,
                                    child: Row(
                                      children: <Widget>[
                                        Image.asset("images/gg.webp",height: 35,width: 50,),

                                        Text("Google",style: TextStyle(
                                          color:
                                          Colors.white,fontSize: 18,
                                        ),),
                                      ],
                                    ),
                                    onPressed: () async{},
                                  ),
                                  SizedBox(width: 1,),
                                  RaisedButton(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:BorderRadius.only(
                                          topRight: Radius.circular(30),
                                          bottomRight: Radius.circular(30)
                                      ),
                                    ),
                                    color: Color.fromRGBO(23,34,60,1),
                                    child: Row(
                                      children: <Widget>[
                                        Image.asset("images/ff.png",height: 27,width: 32,),
                                        SizedBox(width: 3,),
                                        Text("Facebook",style: TextStyle(
                                          color:
                                          Colors.white,fontSize: 18,
                                        ),),
                                      ],
                                    ),
                                    onPressed: () async{},
                                  ),
                                ],
                              ),
                              SizedBox(height: 15,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text("Don\'t have acount"),
                                  RaisedButton(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:BorderRadius.circular(18.0),
                                    ),
                                    color: Colors.black45,
                                    child: Text("Register",style: TextStyle(
                                      color:
                                      Colors.white,fontSize: 18,
                                    ),),
                                    onPressed: () async{
                                      widget.toggleView();
                                    },
                                  ),
                                ],
                              ),

                            ],
                          )
                      ),
                    ),
                  ),
                )
            )
          ],),
      ),
    );
  }


}
