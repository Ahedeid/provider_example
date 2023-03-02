
//---------------------------------- Example of Consumer ---------------------------------------------//

//
// Consumer<Model>(
// builder: (context,model,child){
// return Center(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Text(
// '${model.name}',
// style:  const TextStyle(fontSize: 15),
// ),
// const SizedBox(height: 5),
// Text(
// '${model.subject}',
// style: const TextStyle(fontSize: 15),
// ),
// ElevatedButton(onPressed: () {
// model.ChangeName();
// }, child: const Text('View Data'))
// ],
// ),
// );
// },
// ),

//-------------------------------------------------------------------------------------------------------//

// ---------------------------------- Class Provider ----------------------------------------------------//

import 'package:flutter/material.dart';

class ServesProvider extends ChangeNotifier {
  String _name = 'ahmed';
  int _count = 0;

  // هنا عند التعامل مع ال selector تعامل مع get

  get nameUser => _name;

  get countUser => _count;

  changeName() {
    _name = 'ahed';
    notifyListeners();
  }

  counterIncrese() {
    _count ++;
    notifyListeners();
  }
}

//---------------------------------------------------------------------------------------------------------//