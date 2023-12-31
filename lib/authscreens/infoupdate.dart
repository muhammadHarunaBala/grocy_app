import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/colornotifir.dart';
import '../utils/mediaqury.dart';

class InfoUpdate extends StatefulWidget {
  const InfoUpdate({super.key});

  @override
  State<InfoUpdate> createState() => _InfoUpdateState();
}

class _InfoUpdateState extends State<InfoUpdate> {
  late ColorNotifier notifier;
  @override
  Widget build(BuildContext context) {

    notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(

    );
  }
}
