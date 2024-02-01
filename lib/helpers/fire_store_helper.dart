import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:notes_app/modal/note_modal.dart';

class FireStoreHelper {
  FireStoreHelper._();

  static final FireStoreHelper fireStoreHelper = FireStoreHelper._();

  String collectionPath = "Notes";

  FirebaseFirestore fireStore = FirebaseFirestore.instance;

  Stream<QuerySnapshot<Map<String, dynamic>>> getNotes() {
    return fireStore.collection(collectionPath).snapshots();
  }

  addNotes({required NotesModal notesModal}) {
    return fireStore
        .collection(collectionPath)
        .doc(notesModal.id.toString())
        .set(notesModal.toMap);
  }

  edit({required NotesModal notesModal}) {
    return fireStore
        .collection(collectionPath)
        .doc(notesModal.id.toString())
        .update(notesModal.toMap);
  }

  delete({required NotesModal notesModal}) {
    return fireStore
        .collection(collectionPath)
        .doc(notesModal.id.toString())
        .delete();
  }
}
