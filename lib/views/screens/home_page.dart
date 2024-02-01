import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/helpers/fire_store_helper.dart';
import 'package:notes_app/modal/note_modal.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcabdab),
      appBar: AppBar(
        title: Text(
          "Note App",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
        ),
        backgroundColor: Color(0xffcabdab),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StreamBuilder(
          stream: FireStoreHelper.fireStoreHelper.getNotes(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              QuerySnapshot? snaps = snapshot.data;
              List<QueryDocumentSnapshot> data = snaps?.docs ?? [];
              List<NotesModal> allNotes = data
                  .map((e) => NotesModal.fromMap(data: e.data() as Map))
                  .toList();
              return ListView.builder(
                  itemCount: allNotes.length,
                  itemBuilder: (context, index) {
                    NotesModal nots = allNotes[index];
                    return Card(
                      child: ExpansionTile(
                        leading: Text(nots.titale),
                        title: Text(nots.subtitale),
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              nots.titale;
                              FireStoreHelper.fireStoreHelper
                                  .edit(notesModal: nots);
                            },
                            child: Text("EDIT"),
                          ),
                        ],
                      ),
                    );
                  });
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int id = DateTime.now().millisecondsSinceEpoch;
          NotesModal notesModal = NotesModal(
            id,
            "hello",
            "byyy",
          );
          FireStoreHelper.fireStoreHelper.addNotes(notesModal: notesModal);
          // FbHelper.fbHelper.addUser(userModal: userModal);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
