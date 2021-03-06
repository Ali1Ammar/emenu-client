import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:fluent_ui/fluent_ui.dart';

class ImagePicker extends StatefulWidget {
  final Function(FilePickerResult?) onPicker;
  const ImagePicker({Key? key, required this.onPicker}) : super(key: key);

  @override
  _ImagePickerState createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  FilePickerResult? pickerResult;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            if (pickerResult != null)
              IconButton(
                  icon: const Icon(FluentIcons.cancel),
                  onPressed: () {
                    setState(() {
                      pickerResult = null;
                    });
                  }),
            Button(
                onPressed: () async {
                  pickerResult = await FilePicker.platform
                      .pickFiles(allowMultiple: false, type: FileType.image);
                  widget.onPicker(pickerResult);
                  setState(() {});
                },
                child: const Text("رفع صوره")),
          ],
        ),
        if (pickerResult != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.file(
              File(pickerResult!.files.first.path!),
              height: 120,
              width: 120,
            ),
          ),
      ],
    );
  }
}
