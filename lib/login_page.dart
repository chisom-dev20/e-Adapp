// ignore_for_file: prefer_const_constructors

import 'package:adapp/empty_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {


  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;


  bool cshow = false, rememberMe = false;


  @override
  Widget build(BuildContext context) {

  final width = MediaQuery.of(context).size.width;


    return Scaffold(
      backgroundColor: Color(0xFFF2F4F6),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.0),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).padding.top + 15,),
              
              Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: (){
                    SystemNavigator.pop();
                  },
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Color(0xFFBDE4CF),
                    child: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white, size: 18,),
                  ),
                ),
              ),
              
              SizedBox(height: 80,),
              
              Row(
                children: [
                  SizedBox(width: width*0.35,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('e-ADAPP', style: GoogleFonts.poppins(fontSize: 38, fontWeight: FontWeight.w400),),
                      Text('We Drive Agriculture through Technology', style: GoogleFonts.poppins(fontSize: 8, fontWeight: FontWeight.w500, color: Color(0xFF666666)),),
                    ],
                  ),
                ],
              ),
              
              
              SizedBox(height: 110,),
      
      
              Text('Welcome back', style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700),),
      
              Text('Login into your account', style: GoogleFonts.poppins(fontSize: 15),),
      
              SizedBox(height: 25,),
              
              SizedBox(
                height: 50,
                child: TextFormField(
                  decoration: textFieldDeco('Enter email or phone'),
                  style: GoogleFonts.lato(fontSize: 14),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
      
              SizedBox(height: 15,),
              
              SizedBox(
                height: 50,
                child: TextFormField(
                  style: GoogleFonts.poppins(fontSize: 14),
                  obscureText: cshow,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: textFieldDeco("Confirm New Password").copyWith(
                    suffixIcon: IconButton(
                       onPressed: (){
                          setState(() {
                            cshow = !cshow;
                           });
                         },
                        icon: Icon(
                          cshow?
                          Icons.visibility
                          :
                          Icons.visibility_off,
                          size: 25,
                          color: Colors.grey,
                          ),
                        )
                     ),
                  ),
              ),
              
              SizedBox(height: 15,),
                
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 30,
                  height: 10,
                  child: Checkbox(
                    side: BorderSide(width: 1, color: Color(0xFF22A45D)),
                    activeColor: Color(0xFF22A45D),
                    value: rememberMe, 
                    onChanged: (value){
                      setState(() {
                        rememberMe = value!;
                      });
                    }),
                ),
      
                Text('Remember me', style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w500, color: Color(0xFF666666).withOpacity(0.6)),)
              ],
            ),
      
            InkWell(
              onTap: (){
                customNavigation(context, EmptyScreen(page: 'Forgot Password'));
              },
              child: Text('Forgot Password ?', style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w500, color: Color(0xFF22A45D)),)
            )
           ],
          ),
      
           SizedBox(height: 25,),
      
              InkWell(
                onTap: (){
                  customNavigation(context, EmptyScreen(page: 'Home Page'));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xFF22A45D),
                  ),
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 14),
                  child: Center(child: Text('Log In', style: GoogleFonts.poppins(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w800),)),
                ),
              ),
      
              SizedBox(height: 13,),
      
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Color(0xFFBDE4CF),
                      ),
                    ),
              
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('OR', style: GoogleFonts.poppins(fontSize: 17, color: Color(0xFF000000), fontWeight: FontWeight.w500),),
                    ),
              
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Color(0xFFBDE4CF),
                      ),
                    ),
                  ],
                ),
              ),
      
              SizedBox(height: 10,),
      
              Image.asset('images/fingerprint 4.png', height: 72,),
      
              SizedBox(height: 10,),
      
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an Account?', style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500,),),
                  SizedBox(width: 3,),
                  InkWell(
                    onTap: (){
                      customNavigation(context, EmptyScreen(page: 'Create Account'));
                    },
                    child: Text('Create Account', style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600, color: Color(0xFFBDE4CF)),)
                  )
                ],
              ),
      
            SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }


  customNavigation(context, screen){
    return Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => screen));
  }

    InputDecoration textFieldDeco(String hint) => InputDecoration(
      hintText: hint,
      hintStyle: GoogleFonts.poppins(fontSize: 12, color: Colors.grey.shade500),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(7), borderSide: BorderSide(color: Colors.black.withOpacity(0.6))),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(7), borderSide: BorderSide(color: Colors.black.withOpacity(0.6))),
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(7), borderSide: BorderSide(width: 1.0, color: Color(0xFF22A45D)),),
  );
}