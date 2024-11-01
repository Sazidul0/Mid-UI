import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MidTerm extends StatelessWidget {
  const MidTerm({super.key});

  @override
  Widget build(BuildContext context) {

    RxBool firstUiButtonClicked = false.obs;
    RxBool menuButtonClicked = false.obs;
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
                    // Menu Icon
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 355),
                      curve: Curves.easeOut,
                      top: size.width * 0.025,
                      right: size.width * 0.01,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 355),
                        opacity: buttonClicked.value ? 1 : 0,
                        child:  Column(
                          children: [
                             GestureDetector(
                                 onTap: () {
                                   menuButtonClicked.value = !menuButtonClicked.value;
                                 },
                                 child: Icon(menuButtonClicked.value ? Icons.close : Icons.menu, color: Colors.black,))
                          ],
                        ),
                      ),
                    ),


                    // First circle (bottom)
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 355),
                      curve: Curves.easeOut,
                      top: buttonClicked.value ? (menuButtonClicked.value ? size.width*0.2 : size.width*.84) : (!firstUiButtonClicked.value ? size.width*.84 : size.width*.76),
                      right: buttonClicked.value ? (menuButtonClicked.value ? 0 : size.width*.04) : (!firstUiButtonClicked.value ? size.width*.294 : size.width*.209),
                      child: AnimatedContainer(
                          duration: const Duration(milliseconds: 355),
                          curve: Curves.easeOut,
                          // alignment: Alignment.center,
                          width: buttonClicked.value ? (menuButtonClicked.value ? size.width-42 : size.width*.38) : (!firstUiButtonClicked.value ? size.width*.3 : size.width * .46),
                          height: buttonClicked.value ? (menuButtonClicked.value? size.width*1.2 : size.width*.41) : (!firstUiButtonClicked.value ? size.width*.3 : size.width * .46),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(buttonClicked.value ? (menuButtonClicked.value ? 35 : 60) : 100),
                            color: Color(0xff999999),
                          ),



                      ),
                    ),

                    // Second circle (Middle)
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 355),
                      curve: Curves.easeOut,
                      top: buttonClicked.value ? (menuButtonClicked.value ? size.width *0.4 : size.width*.25) : (!firstUiButtonClicked.value ? size.width*.84 : size.width * .8), // Adjust this value to move the circle
                      right: buttonClicked.value ? (menuButtonClicked.value ? size.width*0.05 : size.width* .04) : (!firstUiButtonClicked.value ? size.width*.29 : size.width*.25),
                      child: AnimatedContainer(
                          duration: const Duration(milliseconds: 355),
                          curve: Curves.easeOut,
                          width: buttonClicked.value ? (menuButtonClicked.value ? size.width - 42 - size.width*0.1 : size.width*.38) : (!firstUiButtonClicked.value ? size.width*.3 : size.width * .38),
                          height: buttonClicked.value ? (menuButtonClicked.value ? size.width*1.052 - size.width*0.1 : size.width*.56) : (!firstUiButtonClicked.value ? size.width*.3 : size.width * .38),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(buttonClicked.value ? (menuButtonClicked.value ? 35 : 60) : 100),
                            color: Color(0xff4d4d4d),
                          ),

                        ),

                    ),
                    // Third Circle (The top Circle)
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 355),
                      curve: Curves.easeOut,
                      top: buttonClicked.value ? (menuButtonClicked.value ? size.width*.236 : size.width*.25) : size.width * .84,
                      left: buttonClicked.value ? (menuButtonClicked.value ? size.width*.7 : size.width*.05) : size.width * .295,
                      child: GestureDetector(
                        onTap: () {
                          firstUiButtonClicked.value = !firstUiButtonClicked.value;
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 355),
                          curve: Curves.easeOut,
                          width: buttonClicked.value ? (menuButtonClicked.value ? size.width*.15 : size.width*.38) : size.width * .3,
                          height: buttonClicked.value ? (menuButtonClicked.value ? size.width*0.15 : size.width) : size.width * .3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.black,
                          ),

                        ),
                      ),
                    ),

                  //   Go button
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 355),
                      curve: Curves.easeOut,
                      top: buttonClicked.value? size.width*.01 : size.width * .94,
                      left: buttonClicked.value? size.width*.33 : size.width* .40,
                      child:
                      AnimatedOpacity(
                        duration: const Duration(milliseconds: 355),
                        opacity: firstUiButtonClicked.value ? 1 : (buttonClicked.value ? 1 : 0),
                        child: SizedBox(
                          child: GestureDetector(
                            onTap: () {
                              if (firstUiButtonClicked.value == true){
                                buttonClicked.value = !buttonClicked.value;
                              }
                              else{
                                firstUiButtonClicked.value = true;
                              }

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


