import 'package:flutter/material.dart';

class CampInvitationRequest extends StatelessWidget{
  const CampInvitationRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Column(
          children:const [
            Text("Camp Invitation Request", style: TextStyle(color: Colors.black),),
            Text("16 Apr, 2022 11:47 PM", style: TextStyle(color: Colors.grey, fontSize: 10),)

          ],
        ),

        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting "
                "industry. Lorem Ipsum has been the industry's standard dummy text "
                "ever since the 1500s, when an unknown printer took a galley of type "
                "and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum")
          ],
        ),
      ),
    );

  }

}