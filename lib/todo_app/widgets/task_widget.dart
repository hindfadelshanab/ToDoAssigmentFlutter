import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  Function fun;
  Function deletFun;

  Task task;
  TaskWidget(this.task, this.fun, this.deletFun);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: task.isCompleted ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: Column(
        children: [
          CheckboxListTile(
            title: Text(task.title),
            value: task.isCompleted,
            onChanged: (v) {
              fun(task);
            },
          ),
          IconButton(
              onPressed: () {
                deletFun(task);
                print("task delet");
              },
              icon: Icon(Icons.delete))
        ],
      ),
    );
  }
}


// class TaskWidget extends StatelessWidget {
//   Function fun;
//   Function deletFun;
//   Task task;
//   TaskWidget(this.task, this.fun, this.deletFun);
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Container(
//       height: 60,
//       margin: EdgeInsets.all(5),
//       decoration: BoxDecoration(
//           color: task.isCompleted ? Colors.green : Colors.black45,
//           borderRadius: BorderRadius.circular(15)),
//       padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
//       child: Row(
//         children: [
//           InkWell(
//               onTap: () {
//                 deletFun(task);
//               },
//               // ignore: prefer_const_constructors
//               child: Icon(
//                 Icons.delete,
//                 color: Colors.red,
//               )),
//           CheckboxListTile(
//             title: Text(task.title),
//             value: task.isCompleted,
//             onChanged: (v) {
//               fun(task);
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
