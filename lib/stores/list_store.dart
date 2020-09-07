import 'package:mobx/mobx.dart';
import 'package:todomobx/stores/todo_store.dart';

part 'list_store.g.dart';

class ListStore = _ListStore with _$ListStore;

abstract class _ListStore with Store {

  /* OBSERVABLES */
  @observable
  String newtodoTitle = '';

  // @observable
  // List<String> todoList = List();
  ObservableList<TodoStore> todoList = ObservableList<TodoStore>();

  /* ACTIONS */
  @action
  void setNewTodoTitle(String value) => newtodoTitle = value;

  @action
  void addTodo() {
    // todoList = List.from(todoList..add(newtodoTitle));
    todoList.insert(0, TodoStore(newtodoTitle));
    newtodoTitle = '';
  }

  /* COMPUTEDS */
  @computed
  bool get isFormValid => newtodoTitle.isNotEmpty;
}