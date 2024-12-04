import 'package:flutter/material.dart';
import 'task_form.dart';
import 'task_details.dart';

class TaskListPage extends StatelessWidget {
  final List<Map<String, String>> tasks = [
    {
      'title': 'Faire les courses',
      'description': 'Acheter des fruits et légumes pour la semaine.',
    },
    {
      'title': 'Étudier Flutter',
      'description': 'Travailler sur l\'application de gestion des tâches.',
    },
    {
      'title': 'Appeler roux',
      'description': 'Discuter du projet pour la semaine prochaine.',
    },
    {
      'title': 'Nettoyer la maison',
      'description': 'Passer l\'aspirateur et nettoyer les surfaces.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liste des tâches"),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return ListTile(
            title: Text(task['title']!),
            subtitle: Text(task['description']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TaskDetailsPage(task: task),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TaskFormPage()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
