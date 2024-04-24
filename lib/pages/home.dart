import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/life_path_number.dart';
import 'package:flutter_application_1/widgets/lucky_container.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Inital Values
  String numbersSubTitle = "Tap to edit";
  String colorsSubTitle = "Tap to edit";
  String daysSubTitle = "Tap to edit";
  String gemStoneSubTitle = "Tap to edit";
  // Text Editing Controllers
  TextEditingController luckyumbersController = TextEditingController();
  TextEditingController luckyColorsController = TextEditingController();
  TextEditingController luckyDaysController = TextEditingController();
  TextEditingController gemStoneController = TextEditingController();
  // Build method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          return SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: orientation == Orientation.portrait ? 100 : 0, bottom: 50),
              height: orientation == Orientation.portrait ? 900 : 1000,
              width: orientation == Orientation.portrait ? 400 : 900,
              color: const Color(0xFFFFC0CB).withOpacity(0.2),
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  const Text(
                    "Numerology",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Material(
                    borderRadius: BorderRadius.circular(15),
                    elevation: 5,
                    shadowColor: const Color.fromARGB(255, 0, 0, 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                LifePathNumber(luckyNumber: numbersSubTitle),
                          ),
                        );
                      },
                      child: Container(
                        height: orientation == Orientation.portrait ? 220 : 220,
                        width: orientation == Orientation.portrait ? 370 : 620,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              height: orientation == Orientation.portrait
                                  ? 150
                                  : 150,
                              width: orientation == Orientation.portrait
                                  ? 400
                                  : 620,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/life-path-number.png",
                                    ),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              "Life Path Number",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    height: orientation == Orientation.portrait ? 170 : 170,
                    width: orientation == Orientation.portrait ? 370 : 370,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            luckyContainer(
                              onTap: () {
                                // Lucky Numbers Editable
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Column(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20, top: 30),
                                          height: 350,
                                          width: 400,
                                          color: Colors.white,
                                          child: Column(
                                            children: [
                                              TextFormField(
                                                controller: luckyumbersController,
                                                decoration: const InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.only(left: 20),
                                                ),
                                              ),
                                              const SizedBox(height: 10),
                                              ElevatedButton(
                                                onPressed: () {
                                                  setState(() {
                                                    numbersSubTitle =
                                                        luckyumbersController
                                                            .text;
                                                  });
                                                  Navigator.pop(context);
                                                  luckyumbersController.clear();
                                                },
                                                child: const Text("Done"),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              context: context,
                              imagePath: "assets/images/123.jpeg",
                              top: 15,
                              title: "Lucky Numbers",
                              subTitle: numbersSubTitle,
                            ),
                            const SizedBox(width: 3),
                            Container(
                              color: Colors.black,
                              height: 83,
                              width: 1,
                            ),
                            const SizedBox(width: 3),
                            luckyContainer(
                              onTap: () {
                                // Lucky Colors Editable
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Column(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20, top: 30),
                                          height: 350,
                                          width: 400,
                                          color: Colors.white,
                                          child: Column(
                                            children: [
                                              TextFormField(
                                                controller: luckyColorsController,
                                                decoration: const InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.only(left: 20),
                                                ),
                                              ),
                                              const SizedBox(height: 10),
                                              ElevatedButton(
                                                onPressed: () {
                                                  setState(() {
                                                    colorsSubTitle =
                                                        luckyColorsController
                                                            .text;
                                                  });
                                                  Navigator.pop(context);
                                                  luckyColorsController.clear();
                                                },
                                                child: const Text("Done"),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              context: context,
                              imagePath: "assets/images/lucky colors.jpeg",
                              top: 15,
                              title: "Lucky Colors",
                              subTitle: colorsSubTitle,
                            ),
                          ],
                        ),
                        const SizedBox(height: 0.01),
                        Container(
                          width: orientation == Orientation.portrait ? 370 :620,
                          height: 1,
                          color: Colors.black,
                        ),
                        const SizedBox(height: 0.01),
                        Row(
                          children: [
                            luckyContainer(
                              onTap: () {
                                // Lucky Days Editable
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Column(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20, top: 30),
                                          height: 350,
                                          width: 400,
                                          color: Colors.white,
                                          child: Column(
                                            children: [
                                              TextFormField(
                                                controller: luckyDaysController,
                                                decoration: const InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.only(left: 20),
                                                ),
                                              ),
                                              const SizedBox(height: 10),
                                              ElevatedButton(
                                                onPressed: () {
                                                  setState(() {
                                                    daysSubTitle =
                                                        luckyDaysController.text;
                                                  });
                                                  luckyColorsController.clear();
            
                                                  Navigator.pop(context);
                                                  luckyDaysController.clear();
                                                },
                                                child: const Text("Done"),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              context: context,
                              imagePath: "assets/images/days.jpeg",
                              top: 15,
                              title: "Lucky Days",
                              subTitle: daysSubTitle,
                            ),
                            const SizedBox(width: 3),
                            Container(
                              color: Colors.black,
                              height: 83,
                              width: 1,
                            ),
                            const SizedBox(width: 3),
                            luckyContainer(
                              onTap: () {
                                showModalBottomSheet(
                                  // Lucky Gem Stone Editable
                                  context: context,
                                  builder: (context) {
                                    return Column(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20, top: 30),
                                          height: 350,
                                          width: 400,
                                          color: Colors.white,
                                          child: Column(
                                            children: [
                                              TextFormField(
                                                controller: gemStoneController,
                                                decoration: const InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.only(left: 20),
                                                ),
                                              ),
                                              const SizedBox(height: 10),
                                              ElevatedButton(
                                                onPressed: () {
                                                  setState(() {
                                                    gemStoneSubTitle =
                                                        gemStoneController.text;
                                                  });
            
                                                  Navigator.pop(context);
                                                  gemStoneController.clear();
                                                },
                                                child: const Text("Done"),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              context: context,
                              imagePath: "assets/images/gems.jpeg",
                              top: 15,
                              title: "Lucky GemStone",
                              subTitle: gemStoneSubTitle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
