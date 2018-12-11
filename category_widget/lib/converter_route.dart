import 'package:category_widget/unit.dart';
import 'package:flutter/material.dart';

class ConverterRoute extends StatefulWidget {
  final String nameCategory;
  
  final Color colorCategory;

  final List<Unit> units;

  const ConverterRoute({
    @required this.nameCategory,
    @required this.colorCategory,
    @required this.units,
  })  : assert(nameCategory != null),
        assert(colorCategory != null),
        assert(units != null);

  @override
  _ConverterRouteState createState() => _ConverterRouteState();

}

class _ConverterRouteState extends State<ConverterRoute>{
  

  @override
  Widget build(BuildContext context) {
    final unitWidgets = _unitWidgets(context);

    return ListView(
      children: unitWidgets,
    );
  }

  List<Widget> _unitWidgets(BuildContext context) {
    return widget.units.map((Unit unit) {
      return Container(
        color: widget.colorCategory,
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subhead,
            ),
          ],
        ),
      );
    }).toList();
  }
}
