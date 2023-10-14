import 'package:flutter/material.dart';
import 'package:my_todo/model/task_info.dart';
import 'package:my_todo/view/add_task.dart';
import 'package:my_todo/viewModel/tasks_list.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Container(
          padding:
              const EdgeInsets.only(top:60,left:30,right:30,bottom: 30),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            CircleAvatar(
              backgroundColor: Colors.teal[500],
              radius: 30,
              child: Icon(
                Icons.list,
                color: Colors.yellow[100],
                //weight: 50,
                size: 40,
              ),
            ),

                const SizedBox(
              height: 10,
            ),

                const Text(
              "TO_DO",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w700
              ),
            ),

                 Text(
              // " ? Tasks",
              "${Provider.of<TaskInfo>(context).taskCount} Tasks" ,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400
              ),
            ),
          ]),
        ),

        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.teal[300],
                borderRadius:  const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                ),
            ),
            child:  const TaskList(),
          ),
        ),
      ]),


      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow[200],
        child: Icon(
          Icons.add,
          size: 45,
          color: Colors.teal[300],
        ),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(bottom:MediaQuery.
                  of(context).viewInsets.bottom),
                  child: const AddTask(),
                ),
              ));
        },
      ),
    );
  }
}
