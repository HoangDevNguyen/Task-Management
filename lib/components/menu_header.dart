import 'package:flutter/material.dart';
import 'package:task_management/widgets/constant.dart';
import 'custom_text.dart';

Widget menuHeader(String txt, BuildContext context, bool isIcon, Widget page) {
  return Padding(
      padding: EdgeInsets.only(top: getHe(context) * 0.03),
    child: Row(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => page));
          },
          child: const Icon(Icons.arrow_back_rounded, color: Colors.black, size: 30,),
        ),
        SizedBox(width: getHe(context) * 0.03,),
        customText(txt, 28),
        Expanded(child: Container(),),
        isIcon
        ? const Icon(Icons.search, color: Colors.black, size: 30,)
        : Container(),
      ],
    ),
  );
}
