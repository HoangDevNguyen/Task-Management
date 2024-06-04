import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:task_management/models/task_model.dart';
import 'package:task_management/widgets/constant.dart';

class Tasks extends StatelessWidget {
  final taskList = TaskModel.generateTasks();
  Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10
          ),
          itemCount: taskList.length,
          itemBuilder: (context, index) => taskList[index].isLast
              ? _buildAddTask()
              : _buildTask(context, taskList[index]),
      ),
    );
  }
}

Widget _buildAddTask(){
  return DottedBorder(
    borderType: BorderType.RRect,
    color: Colors.grey,
    radius: const Radius.circular(20),
    strokeWidth: 2,
    dashPattern: const [10,10],
    child: const Center(
      child: Icon(
        Icons.add, size: 30,
        color: Colors.grey,
      ),
    ),
  );
}

Widget _buildTask(BuildContext context, TaskModel taskList){
  return Container(
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: taskList.bgColor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          taskList.icon,
          color: taskList.iconColor,
          size: 30,
        ),
        const SizedBox(height: 30,),
        Text(
          taskList.title.toString(),
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 20,),
        Row(
          children: [
            _buildTaskStatus(Colors.white54, taskList.iconColor!, '${taskList.left} left'),
            const SizedBox(width: 10,),
            _buildTaskStatus(kWhite, taskList.iconColor!, '${taskList.done} done'),
          ],
        ),
      ],
    ),
  );
}

Widget _buildTaskStatus(Color bgColor, Color txtColor, String txt){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Text(
      txt,
      style: TextStyle(
        color: txtColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
