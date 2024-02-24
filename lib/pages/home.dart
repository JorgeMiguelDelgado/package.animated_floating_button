import 'package:animated_floating_buttons/animated_floating_buttons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Izi Codes'),
      ),
      body: const Center(
        child: Image(
          image: AssetImage('assets/icono.png'),
          width: 250,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AnimatedFloatingActionButton(
        fabButtons: [float1(), float2()],
        key: key,
        colorEndAnimation: Colors.red,
        colorStartAnimation: Colors.blue,
        animatedIconData: AnimatedIcons.menu_close,
      ),
    );
  }
}

Widget float1() {
  return Container(
    child: FloatingActionButton(
      onPressed: () {},
      heroTag: "btn1",
      tooltip: 'Primer botón',
      child: const Icon(Icons.add),
    ),
  );
}

Widget float2() {
  return Container(
    child: FloatingActionButton(
      onPressed: () {},
      heroTag: "btn2",
      tooltip: 'Segundo botón',
      child: const Icon(Icons.person),
    ),
  );
}
