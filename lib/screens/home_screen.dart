import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provide_state.dart';



class ProviderCounter extends StatelessWidget {
  const ProviderCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Model(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Provider Example',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Selector<Model, String>(
                selector: (context, moodel) => moodel.nameUser,
                builder: (context, model, child) {
                  debugPrint(' this is userName');
                  return Text(
                    '${model}',
                    style: const TextStyle(fontSize: 15),
                  );
                },
              ),
              const SizedBox(height: 5),
              Selector<Model, int>(
                  selector: (context, mooel) => mooel.countUser,
                  builder: (context, model, child) {
                    debugPrint(' this is Counter');
                    return Text(
                      '${model}',
                      style: const TextStyle(fontSize: 15),
                    );
                  }),
              Consumer<Model>(
                builder: (context, model, child) {
                  return ElevatedButton(
                      onPressed: () {
                        model.changeName();
                        model.counterIncrese();
                        debugPrint(' this is Button');
                      },
                      child: const Text('View Data'));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}