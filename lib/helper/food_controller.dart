import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/food_model.dart';

Stream<List<Food>> readFood() => FirebaseFirestore.instance
    .collection("foods")
    .orderBy('name', descending: false)
    .snapshots()
    .map((snapshot) =>
        snapshot.docs.map((e) => Food.fromJson(e.data())).toList());
