import 'package:flutter/material.dart';
import 'package:notes_app/constans.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/widgets/Color_list_view.dart';

class EditNotesColorList extends StatefulWidget {
  const EditNotesColorList({super.key, required this.note});
  final NotesModel note;
  @override
  State<EditNotesColorList> createState() => _EditNotesColorListState();
}

class _EditNotesColorListState extends State<EditNotesColorList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColor.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: kColor.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kColor[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: kColor[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
