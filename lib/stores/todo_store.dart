import 'package:mobx/mobx.dart';

part 'todo_store.g.dart';

class TodoStore = _TodoStore with _$TodoStore;

abstract class _TodoStore with Store {

  final String title;

  _TodoStore(this.title);

  /* OBSERVABLES */
  @observable
  bool done = false;

  /* ACTIONS */
  @action
  void toggleDone() => done = !done;
}