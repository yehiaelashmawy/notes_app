part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteLoading extends AddNoteState {}

final class AddNoteSucces extends AddNoteState {}

final class AddNoteFailur extends AddNoteState {
  final String erroeMessage;

  AddNoteFailur(this.erroeMessage);
}
