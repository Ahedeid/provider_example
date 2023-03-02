import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/provide_state.dart';
import 'package:provider_example/screens/home_screen.dart';

void main() => runApp(const ProviderExample());

class ProviderExample extends StatelessWidget {
  const ProviderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => ServesProvider(),
        child: const ProviderCounter(),
        // builder: (context, child) =>const ProviderCounter(),
      ),
    );

  }
}


