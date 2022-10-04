
import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {


  // bool isCheck = false ;
  final bool isChecked ;
  final String taskTitle ;
  final void Function(bool?) checkboxChange;
  TaskTitle({required this.isChecked ,required this.taskTitle ,required this.checkboxChange});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle, style: TextStyle(  decoration: isChecked ?  TextDecoration.lineThrough: null),)
      , trailing: Checkbox(
    activeColor: Colors.red ,
    value : isChecked , onChanged: checkboxChange

    ),
    // (bool? newValue) {
    //
    //   setState((){
    //
    //
    //     isChecked = newValue! ;
    //
    //   });
    //
    //
    // ),

    );
    // }


  }
}
















