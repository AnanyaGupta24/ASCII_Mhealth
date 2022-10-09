import 'package:flutter/material.dart';
import 'dart:math';

class CatalogModel {
  static List<String> itemNames = [
    'Pizza',
    'Burger',
    'Rolls',
    'Sandwich',
    'Spring Roll',
    'Momos',
    'Noodle',
    'Pasta',
    'Fried Rice',
    'Salad',
  ];

  Item getById(int id) => Item(id, itemNames[id % itemNames.length]);

  Item getByPosition(int position) {
    return getById(position);
  }
}

@immutable
class Item {
  final int id;
  final String name;
  Color color = Colors.green;
  final int price = 50;

  Item(this.id, this.name){
        List<Color> colors = [Colors.red, Colors.green];
        Random random = Random();
        final int cindex = random.nextInt(colors.length);
        color = colors[cindex];

  }


  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Item && other.id == id;
}