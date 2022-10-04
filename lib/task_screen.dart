import 'package:flutter/material.dart';
import 'package:to_o_list/task.dart';
import 'package:to_o_list/tasks_list.dart';



 class TaskScreen extends StatefulWidget{

const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
   late String newTaskTitle;
List<Task> tasks = [
  Task(name: "Reading two bage "),
  Task(name: "complete project" ),
  Task(name: "complete project" )
] ;

@override
Widget build(BuildContext context) {
  return Scaffold(

      backgroundColor: Colors.brown[100],
      appBar: AppBar(title: Text("MY Task" ,  style: TextStyle(
      fontSize: 32 ,
      color: Colors .indigo[350] ,
      backgroundColor: Colors.brown,
      fontWeight: FontWeight.bold

  ),



  ) ,



  ),
floatingActionButton: FloatingActionButton(onPressed:

      () {
  showModalBottomSheet(isScrollControlled: true, context: context,
    builder: (context) =>
        Container(


          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              Text("New Task", style: TextStyle(
                  fontSize: 32,
                  color: Colors.indigo[350],
                  fontWeight: FontWeight.bold

              ),),
              TextField(
                autofocus: true,
                onChanged: (newText){
                  newTaskTitle = newText;
                },
              ),
              TextButton(onPressed: () {
                print (newTaskTitle);
              },
                  child: Text("Add"),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.brown,
                      primary: Colors.white
                  )
              ),

            ],

          ),


        ),
  );
}








  ,
backgroundColor: Colors.brown,
  child:  Icon(Icons.plus_one),
),

    body : Container(


      decoration:  BoxDecoration(
        color: Colors.brown[50],
        borderRadius: BorderRadius.all(Radius.circular(20),


        ),


      ),

child : TaskList(tasks),
    )
  );



}
}
