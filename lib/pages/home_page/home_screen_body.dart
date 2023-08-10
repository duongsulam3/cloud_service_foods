import 'package:flutter/material.dart';

import '../../helper/food_controller.dart';
import '../../model/food_model.dart';
import '../../widgets/list_build_food.dart';
import '../detail_page/detail_page.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  final controller = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        // print("No more data");
        fetch();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: StreamBuilder<List<Food>>(
          stream: readFood(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final foods = snapshot.data!;
              // debugPrint(
              //   foods.toString(),
              // );
              return ListView.separated(
                //controller: controller,
                itemBuilder: (context, int index) {
                  if (index < foods.length) {
                    return GestureDetector(
                      onTap: () {
                        // print(
                        //   foods[index].name,
                        // );
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailFoodPage(
                              food: foods[index],
                            ),
                          ),
                        );
                      },
                      child: ListViewFood(
                        food: foods[index],
                      ),
                    );
                  } else {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 32),
                      child: Center(
                        child: Text(
                          "Updating more foods ...",
                          style: TextStyle(
                            fontSize: 24,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    );
                  }
                },
                separatorBuilder: (context, int index) =>
                    const SizedBox(height: 20),
                itemCount: foods.length + 1,
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }

  Future fetch() async {
    setState(() {});
  }
}
