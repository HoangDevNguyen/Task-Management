import 'package:flutter/material.dart';

import 'constant.dart';

class GoPremium extends StatefulWidget {
  const GoPremium({super.key});

  @override
  State<GoPremium> createState() => _GoPremiumState();
}

class _GoPremiumState extends State<GoPremium> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding:  EdgeInsets.all(getHe(context) * 0.004),
          decoration:  BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(getHe(context)*0.02),
            gradient: const LinearGradient(
                colors: [
                  Colors.yellow,
                  Colors.orange,
                ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(getHe(context)*0.016),
              color: Colors.grey[300],
            ),
            padding: EdgeInsets.all(getHe(context)*0.012),
            child: Row(
              children: [
                Container(
                  height: getHe(context) * 0.05,
                  width: getHe(context) * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(getHe(context)*0.02),
                    color: Colors.grey[200],
                  ),
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(const Color.fromARGB(255, 224, 224, 224).withOpacity(0.6), BlendMode.srcATop),
                    child: const Icon(Icons.workspace_premium_outlined,size: 30, color: ThemeColor.textColor,),
                  ),
                ),
                SizedBox(width: getHe(context)*0.015,),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Go Premium",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight:FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Get access",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight:FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Expanded(child: Container()),
                IconButton(
                    onPressed: (){},
                    icon: const Icon(
                        Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 30,
                    ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
