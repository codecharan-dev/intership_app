import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/life_path_page_model.dart';
import 'package:flutter_application_1/services/life_path_services.dart';
import 'package:flutter_application_1/widgets/life_path_number_container_widget.dart';

class LifePathNumber extends StatefulWidget {
  final String luckyNumber;
  const LifePathNumber({
    Key? key,
    required this.luckyNumber,
  }) : super(key: key);

  @override
  State<LifePathNumber> createState() => _LifePathNumberState();
}

class _LifePathNumberState extends State<LifePathNumber> {
  List<LifePathModel> lifePaths = [];
  @override
  void initState() {
    lifePaths = getLifePath();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(
        title: const Text('Life Path Number'),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                maxRadius: 26,
                child: Text(
                  widget.luckyNumber,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ListView.separated(
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final lifePathsIndex = lifePaths[index];
                  return lifePathNumberContainer(description: lifePathsIndex.title, subtitle: lifePathsIndex.subTitle);
                },
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemCount: lifePaths.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
