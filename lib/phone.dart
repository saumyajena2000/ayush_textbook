import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({super.key});

  static String verify="";
  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController contrycode = TextEditingController();
  var phone="";
  @override
  void initState() {
    contrycode.text="+91";
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
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
                Container(
                  height:55,
                  decoration: BoxDecoration(
                    border: Border.all(width:1, color:Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40,
                        child: TextField(
                          controller: contrycode,
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("|", style: TextStyle(fontSize: 33, color: Colors.grey,)),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: TextField(
                              keyboardType: TextInputType.phone,
                              onChanged: (value){
                                phone=value;
                              },
                              decoration: InputDecoration(border: InputBorder.none, hintText: "Phone")
                          ))
                    ],
                  ),
                ),

                SizedBox(
                    height:30
                ),

                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton (onPressed: () {
                    // await FirebaseAuth.instance.verifyPhoneNumber(
                    //   phoneNumber: '${contrycode.text+phone}',
                    //   verificationCompleted: (PhoneAuthCredential credential) {},
                    //   verificationFailed: (FirebaseAuthException e) {},
                    //   codeSent: (String verificationId, int? resendToken) {
                    //     MyPhone.verify=verificationId;
                    //     Navigator.pushNamed(context, 'verify');
                    //   },
                    //   codeAutoRetrievalTimeout: (String verificationId) {},
                    // );
                    Navigator.pushNamed(context, 'verify');

                  }, child: Text('Send Code'), style: ElevatedButton.styleFrom(backgroundColor: Colors.green.shade600,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  )),
                )
              ],
            ),
          ),
        )
    );

  }
}