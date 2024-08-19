void main() {
  List<String> to_do = [];
  List<String> complatedList = [];

// add new task to to_do list
  void addTasks(String task) {
    to_do.add(task);
    print(task);
  }

// Display all Tasks founded in to_do list
  void displayTask() {
    if (to_do.isEmpty) {
      print("There isn't any task");
    } else {
      print("the current task in to_do list ");
      for (var task in to_do) {
        print(task);
      }
    }
  }

// Complete A Task
  void completeTask(int taskIndex) {
    if (taskIndex < 0 || taskIndex >= to_do.length) {
      print('The task not found');
    } else {
      String completedTask = to_do.removeAt(taskIndex);
      complatedList.add(completedTask);
      print('Task completed: $completedTask');
    }
  }

// Delete Task
  void DeleteTask(int taskIndex) {
    if (taskIndex < 0 || taskIndex >= to_do.length) {
      print('The task not found');
    } else {
      String removedTask = to_do.removeAt(taskIndex);
      print("we will remove this task $removedTask");
    }
  }

// Display Completed tasks
  void displayCompletedTask() {
    if (complatedList.isEmpty) {
      print("There isn't any task completed ");
    } else {
      print("the completed tasks are : \n");
      for (var task in complatedList) {
        print("$task completed ");
      }
    }
  }

  displayTask();
  addTasks("the first task");
  addTasks("the second task");
  displayTask();
  DeleteTask(1);
  DeleteTask(3);
  displayTask();
  completeTask(0);
  displayCompletedTask();
}
