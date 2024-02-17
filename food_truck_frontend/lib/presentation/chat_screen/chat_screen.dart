import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430,
      height: 932,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Color(0xFF191A1F),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 23,
            top: 10,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: SizedBox(
                    width: 54,
                    height: 20,
                    child: Text(
                      '9:41',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900,
                        height: 0.08,
                        letterSpacing: -0.32,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 307,
                  top: 3,
                  child: Container(
                    width: 77.40,
                    height: 13,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 50,
                          top: 0,
                          child: Container(
                            width: 27.40,
                            height: 13,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 26,
                          top: 1,
                          child: Container(
                            width: 17,
                            height: 11.83,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://via.placeholder.com/17x12"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 34,
            top: 43,
            child: Container(
              width: 248,
              height: 45,
              child: Stack(
                children: [
                  Positioned(
                    left: 121,
                    top: 0,
                    child: SizedBox(
                      width: 127,
                      child: Text(
                        'ChatBot',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 2,
                    child: Container(
                      width: 30.24,
                      height: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              NetworkImage("https://via.placeholder.com/30x30"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 96,
            child: Container(
              width: 384,
              height: 796,
              child: Stack(
                children: [
                  Positioned(
                    left: 13.58,
                    top: 0,
                    child: Container(
                      width: 48.82,
                      height: 41,
                      child: Stack(children: []),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 736,
                    child: Container(
                      width: 68.09,
                      height: 60,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 24.56,
                            top: 18,
                            child: Container(
                              width: 18.18,
                              height: 24,
                              child: Stack(children: []),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 83.72,
                    top: 736,
                    child: Container(
                      width: 300.28,
                      height: 59,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 30.76,
                            top: 19,
                            child: SizedBox(
                              width: 86.43,
                              child: Text(
                                'Write now…',
                                style: TextStyle(
                                  color: Color(0xFFACADB9),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 259,
                    child: Container(
                      width: 380.42,
                      height: 229,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 5.58,
                            top: 116,
                            child: SizedBox(
                              width: 34.60,
                              child: Text(
                                '10:53',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 345.81,
                            top: 0,
                            child: SizedBox(
                              width: 34.60,
                              child: Text(
                                '10:52',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 341.35,
                            top: 213,
                            child: SizedBox(
                              width: 34.60,
                              child: Text(
                                '10:53',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 181.95,
                            top: 152,
                            child: Container(
                              width: 197.58,
                              height: 46,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 20.09,
                                    top: 13,
                                    child: SizedBox(
                                      width: 158.51,
                                      child: Text(
                                        'OKay, I”m Waiting....',
                                        style: TextStyle(
                                          color: Colors.white
                                              .withOpacity(0.8299999833106995),
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: 0.28,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 41,
                            child: Container(
                              width: 238.88,
                              height: 60,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 24.56,
                                    top: 20,
                                    child: SizedBox(
                                      width: 189.77,
                                      child: Text(
                                        'Maybe, Nearly July, 2022',
                                        style: TextStyle(
                                          color: Color(0xFFF5F6FA),
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 125.58,
            top: 239,
            child: Container(
              width: 282.42,
              height: 101,
              child: Stack(
                children: [
                  Positioned(
                    left: 33.49,
                    top: 19,
                    child: SizedBox(
                      width: 215.44,
                      child: Text(
                        'Hi, I just wanna know that how much time you’ll be updated.',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8299999833106995),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: 0.28,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 97,
            top: 96,
            child: Container(
              width: 300,
              height: 52,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 69,
                      height: 52,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Text(
                              'Helpy',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 1,
                            top: 31,
                            child: Text(
                              'Online',
                              style: TextStyle(
                                color: Color(0xFF616161),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 44,
            top: 174,
            child: Container(
              width: 342,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFDADADA),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
