import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> fortuneList = [
    "Adventure awaits you just around the corner",
    "A loyal friend will soon bring you great joy",
    "The future is bright; wear sunglasses!",
    "Happiness comes when you least expect it",
    "You will soon receive a pleasant surprise",
    "Your creativity will lead you to success",
    "Good things come to those who hustle",
    "An exciting opportunity is on the horizon",
    "Take a leap of faith; the net will appear",
    "You are destined for greatness—don’t hold back",
    "Kindness is your superpower; use it wisely",
    "You’re about to embark on your next big adventure!",
    "Patience is the key to unlocking your dreams",
    "Someone is silently admiring your hard work",
    "A small step today can lead to a giant leap tomorrow",
  ];
  String value = 'Click in the Icon to know your fortune';
  int flag = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 98, 54),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const Text(
                'FORTUNE COOKIE',
                style: TextStyle(
                  fontSize: 22,
                  letterSpacing: 8,
                  wordSpacing: 10,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          value,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 243, 98, 54),
                            elevation: 0),
                        onPressed: () {
                          setState(() {
                            value = fortuneList[flag];
                            flag++;
                            if (flag == fortuneList.length) flag = 0;
                          });
                        },
                        child: Image.asset(
                          'assets/images/emoji.png',
                          width: 250,
                          height: 250,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
