import 'package:cloud_service_foods/widgets/small_text_description.dart';
import 'package:flutter/material.dart';

import 'big_text.dart';

class ListViewFood extends StatelessWidget {
  final dynamic food;
  const ListViewFood({
    Key? key,
    required this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(food.img),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(60),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              color: const Color(0xffE6E4E6),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),

                  spreadRadius: 5,

                  blurRadius: 7,

                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BigText(
                    text: food.name,
                    size: 30,
                  ),
                  SmallTextDescription(text: food.description),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
