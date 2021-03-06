import 'package:flutter/material.dart';
import 'package:recruitinglingo/src/ui/screens/main_screen.dart';
import 'package:recruitinglingo/src/ui/widgets/input_textarea.dart';
import 'package:toast/toast.dart';
import '../../util/Colors.dart';
import '../widgets/custom_dropdown.dart';
import '../widgets/rounded_button.dart';

class StatUpdate extends StatefulWidget {
  StatUpdate(this.screenIndex, {Key? key}) : super(key: key);
  int screenIndex;

  @override
  State<StatUpdate> createState() => _StatUpdateState(screenIndex);
}

class _StatUpdateState extends State<StatUpdate> {
  int index = 0;
  _StatUpdateState(this.index);
  final myController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Column(
          children: [
            const Text(
              "Stat Update",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "$index out 0f 8",
              style: const TextStyle(color: Colors.grey, fontSize: 10),
            )
          ],
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
        height: screenSize.height,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 12, 10),
              child: Text(
                "Lorem Ipsum is simply dummy text of the Printing?",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Center(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(5), border: Border.all(color: appColor)),
                child: CustDropDown(
                  items: const [
                    CustDropdownMenuItem(
                      value: "Test1",
                      child: Text("Test1"),
                    ),
                    CustDropdownMenuItem(
                      value: "Test2",
                      child: Text("Test2"),
                    ),

                  ],
                  hintText: "Please select any option",
                  borderRadius: 5,
                  onChanged: (val) {
                   setState(() {
                     myController.text = val;
                   });
                  },

                ),
              ),
            ),
            TextArea(hintText: "Answer", textHandler: myController),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RoundedButton(
                      onPress: () {
                        if (index < 8) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StatUpdate(index + 1),
                              ));
                        } else {
                          Toast.show("Stats Updated",
                              gravity: Toast.lengthLong);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainScreen()),
                          );
                        }
                      },
                      color: appColor,
                      textColor: Colors.white,
                      title: 'NEXT',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
