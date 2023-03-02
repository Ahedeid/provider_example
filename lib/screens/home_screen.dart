import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provide_state.dart';



class ProviderCounter extends StatefulWidget {
  const ProviderCounter({Key? key}) : super(key: key);

  @override
  State<ProviderCounter> createState() => _ProviderCounterState();
}

class _ProviderCounterState extends State<ProviderCounter> {
String? fName;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      fName = Provider
          .of<ServesProvider>(context)
          .nameUser;
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
  // var prov= Provider.of<ServesProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          '$fName',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Selector<ServesProvider, String>(
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
            Selector<ServesProvider, int>(
                selector: (context, mooel) => mooel.countUser,
                builder: (context, model, child) {
                  debugPrint(' this is Counter');
                  return Text(
                    '${model}',
                    style: const TextStyle(fontSize: 15),
                  );
                }),
            Consumer(
              builder: (context, ServesProvider model, child) {
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
    );
  }
}