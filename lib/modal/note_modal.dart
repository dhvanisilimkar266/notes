class NotesModal {
  final int id;
  late String subtitale, titale;

  NotesModal(
    this.id,
    this.titale,
    this.subtitale,
  );
  factory NotesModal.fromMap({required Map data}) => NotesModal(
        data['id'],
        data['titale'],
        data['subtitale'],
      );
  Map<String, dynamic> get toMap => {
        'id': id,
        'name': titale,
        'age': subtitale,
      };
}
