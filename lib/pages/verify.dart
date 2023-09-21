import 'package:ayush_textbook_assessment/phone.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class MyVerify extends StatefulWidget {
  const MyVerify({super.key});

  @override
  State<MyVerify> createState() => _MyVerifyState();
}

class _MyVerifyState extends State<MyVerify> {
 // final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    var code="";
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded, color: Colors.black,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(left:25, right:25),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Phone Verification',  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 10,
                ),

                Text('We need to Register Before Getting Started', style: TextStyle(fontSize: 16), textAlign: TextAlign.center,),
                SizedBox(
                  height: 20,
                ),
                Pinput(
                  length: 6,
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                  onChanged: (value){
                    code =value;
                  },
                ),
                SizedBox(
                    height:30
                ),

                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    // PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: MyPhone.verify, smsCode: code);
                    //
                    //
                    // await auth.signInWithCredential(credential);
                  }, child: Text('Click To Verify'), style: ElevatedButton.styleFrom(backgroundColor: Colors.green.shade600,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  )),
                ),
                Row(
                  children: [
                    TextButton(onPressed: (){
                      Navigator.pushNamedAndRemoveUntil(context, "phone", (route) => false);
                    }, child: Text("Edit Phone no?",style: TextStyle(color: Colors.black),))
                  ],
                )

              ],
            ),
          ),
        )
    );
  }
}