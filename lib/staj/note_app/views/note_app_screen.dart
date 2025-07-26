import 'package:flutter/material.dart';
import 'package:flutter_learn/staj/note_app/viewmodels/note_app_view_model.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class NoteAppScreen extends StatelessWidget {
  NoteAppScreen({super.key});

  final List<Color?> colors = [
    Colors.amber[400],
    Colors.purple[400],
    Colors.red[400],
    Colors.blue[400],
    Colors.green[400],
    Colors.indigo[400],
    Colors.pink[400],
    Colors.teal[400],
  ];

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<NoteAppViewModel>();
    return Scaffold(
      appBar: AppBar(title: Text("Notes")),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber[900],
        child: Icon(Icons.add),
        onPressed: () {
          context.push("/noteadd");
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: viewModel.model.isEmpty
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  Center(child: Image.asset("assets/rafiki.png")),
                  Text("Create your first note !"),
                ],
              )
            : Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(height: 8),
                      itemCount: viewModel.model.length,
                      itemBuilder: (context, index) {
                        final model = viewModel.model[index];
                        return InkWell(
                          onTap: () {
                            context.push("/notedetail", extra: model);
                          },
                          child: Slidable(
                            endActionPane: ActionPane(
                              motion: ScrollMotion(),
                              children: [
                                SlidableAction(
                                  backgroundColor: Colors.red,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  ),
                                  onPressed: (BuildContext context) {
                                    viewModel.deleteNote(model);
                                  },
                                  icon: Icons.delete,
                                  label: "Delete",
                                ),
                              ],
                            ),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                ),
                              ),
                              margin: EdgeInsets.symmetric(vertical: 0),
                              color: colors[index % colors.length],
                              child: ListTile(
                                title: Text(model.title, style: TextStyle(color: Colors.black)),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
