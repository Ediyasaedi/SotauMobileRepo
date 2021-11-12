import 'package:flutter/material.dart';
import 'package:sotauapp/components/custom_appbar.dart';

class MenuAugmentedReality extends StatefulWidget {
  const MenuAugmentedReality({Key? key}) : super(key: key);

  @override
  _MenuAugmentedRealityState createState() => _MenuAugmentedRealityState();
}

class _MenuAugmentedRealityState extends State<MenuAugmentedReality> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        iconCode: 4,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tampilan 3d Gedung TAU",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text("markerless based Augmented Reality"),
            ],
          ),
        ),
      ),
    );
  }
}
