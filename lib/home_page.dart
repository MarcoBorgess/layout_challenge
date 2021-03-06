import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'floating_pics_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            minHeight: 100.h,
          ),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color(0xff39b68d),
                Color(0xff2eac8a),
                Color(0xff23a286),
                Color(0xff189982),
                Color(0xff0e8f7e),
                Color(0xff058579),
                Color(0xff017c73),
                Color(0xff00726d),
              ],
              tileMode: TileMode.mirror,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 100.w,
                height: 50.h,
                child: Stack(
                  children: [
                    FloatingPics(
                      posTop: 22.5.h,
                      posLeft: 52.5.w,
                      size: 48.w,
                      angle: -15 / 360,
                      bgColor: const Color(0xffFFE7AA),
                      assetImage: 'assets/images/char2.png',
                    ),
                    FloatingPics(
                      posTop: 27.5.h,
                      posLeft: 0,
                      size: 30.w,
                      angle: 15 / 360,
                      bgColor: const Color(0xffEAD4FF),
                      assetImage: 'assets/images/char1.png',
                    ),
                    FloatingPics(
                      posTop: 10.h,
                      posLeft: 15.w,
                      size: 25.w,
                      angle: -15 / 360,
                      bgColor: const Color(0xffFFDDDD),
                      assetImage: 'assets/images/char3.png',
                    ),
                    FloatingPics(
                      posTop: 5.h,
                      posLeft: 50.w,
                      size: 20.w,
                      angle: 5 / 360,
                      bgColor: const Color(0xffE6D7B3),
                      assetImage: 'assets/images/char4.png',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  children: [
                    const HomeTitle(
                      title: "Let's Get\nStarted",
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: const HomeSubTitle(
                        subTitle:
                            "Connect with each other with chatting or calling. Enjoy safe and private texting",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 6.h),
                      child: const RegisterButton(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: const LoginText(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginText extends StatelessWidget {
  const LoginText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'Already have an account? ',
          ),
          TextSpan(
            text: 'Login',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap =
                  () => Navigator.of(context).pushReplacementNamed('/login'),
          )
        ],
        style: TextStyle(
          color: Colors.white,
          fontSize: 12.sp,
          height: 1.75,
        ),
      ),
    );
  }
}

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushReplacementNamed('/register');
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: const Color(0xff017c73),
        minimumSize: Size(double.infinity, 40.sp),
        textStyle: TextStyle(
          fontSize: 15.sp,
          color: const Color(0xff017c73),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: const Text(
        'Join Now',
      ),
    );
  }
}

class HomeTitle extends StatelessWidget {
  final String? title;

  const HomeTitle({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        title.toString(),
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.white,
          fontSize: 45.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class HomeSubTitle extends StatelessWidget {
  final String? subTitle;

  const HomeSubTitle({Key? key, this.subTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle.toString(),
      textDirection: TextDirection.ltr,
      style: TextStyle(
        color: Colors.white,
        fontSize: 12.sp,
        height: 1.75,
      ),
    );
  }
}
