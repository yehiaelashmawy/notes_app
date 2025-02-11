part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesScusse extends NotesState {
  final List<NotesModel> notes;

  NotesScusse(this.notes);
}

final class NotesFailur extends NotesState {
  final String erroeMessage;

  NotesFailur(this.erroeMessage);
}
