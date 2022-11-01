import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = [
    {"Movies": "JonWick"},
    {"Movies": "GOT"},
    {"Movies": "Valorant"},
    {"Movies": "Hunger Games"},
    {"Movies": "HOTD"},
    {"Movies": "PUBG"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("addnote");
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text(
          "Notes",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: Key("$index"),
                child: Notes(notes[index]),
                onDismissed: (direction) {
                  setState(() {
                    notes.removeAt(index);
                  });
                },
              );
            }),
      ),
    );
  }
}

class Notes extends StatelessWidget {
  final notes;
  Notes(this.notes);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(flex: 1, child: Image.asset("images/lightcoffe.jpg")),
          Expanded(
            flex: 3,
            child: ListTile(
              title: Text(
                "Movies",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("${notes['Movies']}"),
              trailing: IconButton(
                icon: Icon(Icons.edit),
                onPressed: (() {}),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
