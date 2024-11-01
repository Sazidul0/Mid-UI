import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MidTerm extends StatelessWidget {
  const MidTerm({super.key});

  @override
  Widget build(BuildContext context) {

    RxBool buttonClicked = false.obs;
    var size = Get.size;

    return Obx(()=>
        Scaffold(
          body: SafeArea(
            child:  Padding(
              padding: const EdgeInsets.all(21.0),
              child: SizedBox(
                width: size.width,
                height: size.height,
                child: Stack(
                  alignment: Alignment.center, // Center the circles
                  children: [

                    // First circle (bottom)
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 355),
                      curve: Curves.easeOut,
                      top: buttonClicked.value ? size.width*.61 : size.width*.76,
                      child: AnimatedContainer(
                          duration: const Duration(milliseconds: 355),
                          curve: Curves.easeOut,
                          // alignment: Alignment.center,
                          width: buttonClicked.value ? size.width*.8 : size.width * .46,
                          height: buttonClicked.value ? size.width*.8 : size.width * .46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(buttonClicked.value ? 60 : 100),
                            color: Color(0xff999999),
                          ),
                          child: buttonClicked.value ? AnimatedOpacity(
                            duration: const Duration(milliseconds: 355),
                            opacity: buttonClicked.value ? 1 : 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.shopping_cart, size: size.width * .06,),
                                    Text(" Items in Cart", style: TextStyle(fontSize: size.width * .05),)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.history_toggle_off, size: size.width * .06,),
                                    Text(" Purchase history", style: TextStyle(fontSize: size.width * .05),)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.settings_outlined, size: size.width * .06,),
                                    Text(" App Settings", style: TextStyle(fontSize: size.width * .05),)
                                  ],
                                ),
                              ],
                            ),
                          ) : SizedBox()
                      ),
                    ),

                    // Second circle (Middle)
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 355),
                      curve: Curves.easeOut,
                      top: buttonClicked.value ? size.width*.33 : size.width * .8, // Adjust this value to move the circle
                      right: buttonClicked.value ? 0 : size.width*.25,
                      child:
                      GestureDetector(
                        onTap: () {
                          buttonClicked.value = false;
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 355),
                          curve: Curves.easeOut,
                          width: buttonClicked.value ? size.width*.2 : size.width * .38,
                          height: buttonClicked.value ? size.width*.2 : size.width * .38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xff4d4d4d),
                          ),
                          child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 121),
                              opacity: buttonClicked.value ? 1 : 0,
                              child: Icon(Icons.rotate_left, size: size.width * 0.1, color: Colors.white,)),
                        ),
                      )
                      ,
                    ),
                    // Third Circle (The top Circle)
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 355),
                      curve: Curves.easeOut,
                      top: buttonClicked.value ? size.width*.25 : size.width * .84,
                      left: buttonClicked.value ? size.width*.05 : size.width * .295,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 355),
                        curve: Curves.easeOut,
                        width: buttonClicked.value ? size.width*.3 : size.width * .3,
                        height: buttonClicked.value ? size.width : size.width * .3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.black,
                        ),

                      ),
                    ),

                  //   Go button
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 355),
                      curve: Curves.easeOut,
                      top: buttonClicked.value? size.width*.21 : size.width * .94,
                      left: buttonClicked.value? size.width*.33 : size.width* .40,
                      child:
                      GestureDetector(
                        onTap: () {
                          buttonClicked.value = !buttonClicked.value;
                        },
                        child: Text(
                          buttonClicked.value ? "Ripples" : "GO",
                          style: TextStyle(
                            fontSize: size.width * 0.07,
                            color: buttonClicked.value? Colors.black : Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ),
        )
    );
  }
  }


