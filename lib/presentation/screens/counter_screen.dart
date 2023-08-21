import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  //const CounterScreen({super.key});
  const CounterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fondoprincipal.jpg'),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
              child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              const Column(
                //padding: EdgeInsets.only(left: 30, top: 60),
                children: [
                  Text(
                    'Let´s select your therapist.\nYour therapist will travel\nthis journey with you. Each have skills\nthat match your needs.\n\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 25),
                  ),
                ],
              ),
              //  const SizedBox(height: 5),
              Column(
                children: [
                  Container(
                    height: 130.0,
                    width: 130.0,
                    decoration: BoxDecoration(
                      border: Border.all(width: 4, color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1))
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/alex.JPG'),
                        //const Text('ALEX',style: TextStyle(color: Colors.white70, fontSize: 28)),
                      ),
                    ),
                  
                  )
                  
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Container(
                                      child: Text('ALEX',style: TextStyle(color: Colors.white70, fontSize: 28)),
                  )
                ],
              ),
              const SizedBox(height: 30),
              const Column(
                //padding: EdgeInsets.only(left: 30, top: 580),
                children: [
                  Text(
                      'I´m a family man with a holistic\napproach to finance.Taking\nthoughtful and calculated risk is\nprudent.Oh, and there is a BIG\ndifference between good debt and\nbad debt!',
                      style: TextStyle(color: Colors.white70, fontSize: 25)),
                ],
              )
            ],
          )),
        ));
  }
}
