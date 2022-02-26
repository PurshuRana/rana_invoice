import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:rana_invoice/widgets/appbar.dart';

class RanaDashboard extends StatefulWidget {
  const RanaDashboard({Key? key}) : super(key: key);

  @override
  _RanaDashboardState createState() => _RanaDashboardState();
}

class _RanaDashboardState extends State<RanaDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RanaWidgets.ranaAppBar("RANA Invoice"),
      body: Row(
        children: [],
      ),
    );
  }
}
