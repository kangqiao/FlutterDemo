import 'dart:async';

void main() {
  Future(() => print('Task1 Future 1'));
  Future fx = Future(() => null);
  Future(() => print("Task1 Future 3")).then((value) {
    print("subTask 1 Future 3");
    scheduleMicrotask(() => print("Microtask 1"));
  }).then((value) => print("subTask 3 Future 3"));
  Future(() => print("Task1 Future 4"))
      .then((value) => Future(() => print("sub subTask 1 Future 4")))
      .then((value) => print("sub subTask 2 Future 4"));
  Future(() => print("Task1 Future 5"));
  fx.then((value) => print("Task1 Future 2"));
  scheduleMicrotask(() => print("Microtask 2"));
  print("normal Task");
}
