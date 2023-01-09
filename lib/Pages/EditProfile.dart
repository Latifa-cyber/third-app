import 'package:flutter/material.dart';
import 'package:viva_app/Pages/home.dart';


class EditProfile extends StatefulWidget {
  const EditProfile({ Key? key }) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool isObscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xDDA663CC),
        toolbarHeight: 50,
        title: Text('Profile Settings',style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontFamily: 'MontaguSlab',
            fontWeight: FontWeight.w200
        ),),
        leading: IconButton(
          icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home(),));
          },),
      ),
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              stops: [
                0.5,
                0.9,
              ],
              colors: [
                Color(0xFFF5F5F5),
                Color(0x20B8D0EB),
              ],
            ),
          ),
          child:ListView(
            padding: EdgeInsets.all(30),
            children: [
              Center(
                  child: Stack(
                      fit: StackFit.loose,
                      children:[
                        Container(
                          margin: EdgeInsets.only(right:15),
                          height:100,
                          width:100,
                          decoration:BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage( image: AssetImage('userImg.png'),fit:BoxFit.cover)
                          ),


                        ),
                        Container(
                          margin: EdgeInsets.only(left: 67,top: 50),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  width: 2,
                                  color: Colors.white
                              ),
                              color: Color(0xffA663CC) ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        )
                      ]
                  )


              ),
              SizedBox(height: 30,),
              buildTextField("Full name","User64563", false),
              buildTextField("Email","User64563@gmail.com", false),
              buildTextField("Password","********", true),
              SizedBox(height: 30,),
              Container(
                  alignment: Alignment.bottomCenter,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(onPressed:(){},
                        child: Text('Cancel',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                letterSpacing: 2,
                                color : Color(0xffA663CC))),
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.only(top:20, bottom:20, left:45, right:45),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          primary: Colors.purple,

                        ),),
                      ElevatedButton(
                          onPressed: (){},
                          child: Text("Save", style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            letterSpacing:2,
                            color: Colors.white,
                          )),
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.only(top:20, bottom:20, left:45, right:45),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            backgroundColor: Color(0xffA663CC),
                          )

                      ),


                    ],)),

            ],
          )),);

  }
  Widget buildTextField(String labelText, String placeholder, bool isPasswordTextField){
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
        obscureText: isPasswordTextField ? isObscurePassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField ?
            IconButton(
                onPressed: (){
                  setState((){
                    isObscurePassword = !isObscurePassword;

                  });
                }, icon: Icon(Icons.remove_red_eye_outlined, color: Colors.grey)
            ): null,
            contentPadding: EdgeInsets.only(bottom: 5),
            labelText: labelText,
            labelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            )
        ),

      ),);
  }
}