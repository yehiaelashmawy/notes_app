import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constans.dart';
import 'package:notes_app/models/notes_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  featchAllNotes() async {
    try {
      var notesBox = Hive.box<NotesModel>(kNotesBox);
      List<NotesModel> note = notesBox.values.toList();
      emit(NotesScusse(note));
    } catch (e) {
      emit(NotesFailur(e.toString()));
    }
  }
}
