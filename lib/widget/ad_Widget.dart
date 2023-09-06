import 'package:flutter/material.dart';

class AdvWidget extends StatelessWidget {
  final int saleNo;
  const AdvWidget({super.key,required this.saleNo});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 260,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
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
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${saleNo}% Off',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 25),
                ),
                Text(
                  'On everything today',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'With code:FSCRETION',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 11),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 70,
                  height: 25,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(0),
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () {},
                    child: Text(
                      'Get Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
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
