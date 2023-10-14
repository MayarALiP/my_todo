import 'package:flutter/material.dart';
import 'package:my_todo/model/task_info.dart';
import 'package:provider/provider.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    String addedTaskTitle = "";

    return Container(
      color: const Color(0x0044a88e),
      child: Container(
        padding:  const EdgeInsets.all(20),
            decoration: BoxDecoration(
            color: Colors.yellow[200],
            borderRadius: const BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),
        ),

        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            const Text(
            "Add Task ",
            style: TextStyle(fontSize: 50,
            fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),

          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            style:   const TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              fillColor: Colors.teal[300],
            ),
            onChanged: (newText){
              addedTaskTitle = newText ;
            },
          ),

            const SizedBox(
            height: 10,
          ),

          ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(const Size(200, 50)),
                backgroundColor: MaterialStatePropertyAll(Colors.teal[300]),
              ),
              onPressed: () {
               Provider.of<TaskInfo>(context).addTask(addedTaskTitle);
                Navigator.pop(context);
              },
              child: Text(
                "Add",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.yellow[200],
              ),
          )),
        ]),
      ),
    );
  }
}
