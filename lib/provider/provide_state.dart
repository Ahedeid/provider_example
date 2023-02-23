
//---------------------------------- Example of Consumer ---------------------------------------------

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

//-------------------------------------------------------------------------------------------------------

// ---------------------------------- Class Provider ----------------------------------------------------

import 'package:flutter/cupertino.dart';

class Model extends ChangeNotifier {
  String name = 'ahmed';
  int count = 0;

  // هنا عند التعامل مع ال selector تعامل مع get

  get nameUser => name;

  get countUser => count;

  changeName() {
    name = 'ahed';
    notifyListeners();
  }

  counterIncrese() {
    count ++;
    notifyListeners();
  }
}
