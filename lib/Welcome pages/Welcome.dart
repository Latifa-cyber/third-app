import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:viva_app/Welcome pages/WelcomePage2.dart';
import 'package:viva_app/Welcome pages/WelcomePage1.dart';
import 'package:viva_app/Welcome pages/WelcomePage3.dart';
import 'package:viva_app/Auth Pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Welcome extends StatefulWidget {
  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  getUserInfo() async{
    SharedPreferences info = await SharedPreferences.getInstance();
    info.setInt('logged in', 2);
  }

  PageController _controller = PageController(
    initialPage: 0,
  );

  bool onLastScreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF120D3A),
        body:Stack(
          children: [
            PageView(
              controller: _controller,
              onPageChanged: (index){
                setState((){
                  onLastScreen = (index == 2);
                }
                );

              },
              children: [
                WelcomePage1(),
                WelcomePage2(),
                WelcomePage3()
              ],
            ),
            Container(
              alignment: Alignment(0, 0.75),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){
                        _controller.jumpToPage(2);
                      },
                        child: Text('skip', style: TextStyle(
                          fontFamily: 'MontaguSlab',
                          fontSize: 16,
                          fontWeight: FontWeight.w200,
                          color: Color(0xFFEBEBEB),
                        ),)
                    ),
                    SmoothPageIndicator(controller: _controller, count: 3, effect: WormEffect(dotColor:  Colors.grey,
                      activeDotColor:  Colors.white)),
                    onLastScreen
                    ? GestureDetector(
                        onTap: (){
                          Navigator.push(context
                              , MaterialPageRoute(builder: (context)=>Login()));
                        },
                        child: Text('Start', style: TextStyle(
                          fontFamily: 'MontaguSlab',
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFC727),
                        ),
                        )
                    )
                    :GestureDetector(
                        onTap: (){
                      _controller.nextPage(duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: Text('Next', style: TextStyle(
                    fontFamily: 'MontaguSlab',
                    fontSize: 16,
                    fontWeight: FontWeight.w200,
                    color: Color(0xFFEBEBEB),
                    ),
                    )),
                  ],
                ),
            ),
          ],
        )
    );
  }
}