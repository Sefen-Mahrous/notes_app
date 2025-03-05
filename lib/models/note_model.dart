class NoteModel {
  final String title;
  final String content;
  final String date;
  final int color;

  const NoteModel(
    this.date,
    this.color, {
    required this.title,
    required this.content,
  });
}
