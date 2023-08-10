import 'package:cloud_service_foods/helper/food_controller.dart';
import 'package:cloud_service_foods/widgets/list_build_food.dart';
import 'package:flutter/material.dart';

import '../../model/food_model.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<List<Food>>(
          stream: readFood(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final foods = snapshot.data!;
              // debugPrint(
              //   foods.toString(),
              // );
              return ListView.builder(
                itemCount: foods.length,
                itemBuilder: (context, index) => ListViewFood(
                  food: foods[index],
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
