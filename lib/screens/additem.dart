import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shopping/widgets/CartAppBar.dart';

class Additem extends StatefulWidget {
  const Additem({Key? key}) : super(key: key);

  @override
  State<Additem> createState() => _AdditemState();
}

class _AdditemState extends State<Additem> {
  File? _image;
  final picker = ImagePicker();

  Future imagePicker() async {
    final pick = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pick != null) {
        _image = File(pick.path);
      }
    });
  }

  Future uploadimage(File _image) async {
    String imgId = DateTime.now().microsecondsSinceEpoch.toString();
    Reference ref =
        FirebaseStorage.instance.ref().child('images').child('users$imgId');
    await ref.putFile(_image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(25),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Color(0xFF4C53A5),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Add Item",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5)),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.more_vert,
                  size: 30,
                  color: Color(0xFF4C53A5),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.deepPurple),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: _image == null
                        ? Center(
                            child: Text("No image selected"),
                          )
                        : Image.file(_image!)),
                ElevatedButton(
                  onPressed: () {
                    imagePicker();
                  },
                  child: Text("select image"),
                ),
               
              ],
              
            ),
          ),
           ElevatedButton(
                  onPressed: () {
                    uploadimage(_image!);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Upload Successfully'),
                      ));
                  },
                  child: Text("Upload"),
                ),
        ],
      ),
    );
  }
}
