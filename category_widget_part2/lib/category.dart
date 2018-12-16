import 'package:category_widget/unit.dart';
import 'package:flutter/material.dart';

class Category {
  final String name;
  final ColorSwatch color;
  final List<Unit> units;
  final String iconLocation;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
    @required this.units,
  })  : assert(name != null),
        assert(color != null),
        assert(units != null),
        assert(iconLocation != null);

}
