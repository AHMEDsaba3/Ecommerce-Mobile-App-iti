import 'package:final_project/constant/constant.dart';
import 'package:flutter/material.dart';

class AdvWidget extends StatelessWidget {
  final int saleNo;
  const AdvWidget({super.key,required this.saleNo});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: widthR(260, context),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(sizeR(20, context)),
        color: Colors.grey[350],
      ),
      child: Stack(
        children: [
          Positioned(
              left: 0,
              child: Image.asset(
                'assets/image/image 90.png',
              )),
          Padding(
            padding:  EdgeInsets.all(sizeR(15, context)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${saleNo}% Off',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: sizeR(25, context)),
                ),
                Text(
                  'On everything today',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: sizeR(16, context)),
                ),
                 SizedBox(
                  height: heightR(10, context),
                ),
                Text(
                  'With code:FSCRETION',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: sizeR(11, context)),
                ),
                 SizedBox(
                  height: heightR(14, context),
                ),
                SizedBox(
                  width: widthR(70, context),
                  height: heightR(25, context),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(0), backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(sizeR(30, context)))),
                    onPressed: () {},
                    child: Text(
                      'Get Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: sizeR(10, context),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
