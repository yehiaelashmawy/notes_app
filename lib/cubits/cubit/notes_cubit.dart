import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constans.dart';
import 'package:notes_app/models/notes_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NotesModel>? note;
  featchAllNotes() async {
    var notesBox = Hive.box<NotesModel>(kNotesBox);
    note = notesBox.values.toList();
    emit(NotesScusse());
  }
}
