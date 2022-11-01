import 'package:flutter/material.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({super.key});

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Note"),
        centerTitle: true,
      ),
      body: 
         Container(
          child: Container(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        border:
                            OutlineInputBorder(borderSide: BorderSide(width: 4)),
                        hintText: "Note Title",
                        label: Text("Title"),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      maxLines: 20,
                      decoration: InputDecoration(
                        border:
                            OutlineInputBorder(borderSide: BorderSide(width: 4)),
                        hintText: "Description",
                        label: Text(
                          "Note",
                          textAlign: TextAlign.start,
                        ),
                        alignLabelWithHint: true,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    height: 220,
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Add Image",
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        InkWell(
                                          onTap: (() {}),
                                          child: Row(
                                            children: [
                                              Icon(
                                                  size: 30, Icons.photo_outlined),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                "From Gallary",
                                                style: TextStyle(fontSize: 20),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        InkWell(
                                          onTap: (() {}),
                                          child: Row(
                                            children: [
                                              Icon(size: 30, Icons.camera),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text("From Camera",
                                                  style: TextStyle(fontSize: 20))
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                });
                          },
                          child: Text("Add Image")),
                      ElevatedButton(onPressed: () {}, child: Text("Add Note"))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
    
    );
  }
}

// showbottomsheet() {
//   return showModalBottomSheet(
//       context: context,
//       builder: (context) {
//         return Container(
//           child: Column(
//             children: [
//               Text(
//                 "Add Image",
//                 style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//               ),
//               InkWell(
//                 onTap: (() {}),
//                 child: Row(
//                   children: [
//                     Icon(Icons.browse_gallery_sharp),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text("From Gallary")
//                   ],
//                 ),
//               ),
//               InkWell(
//                 onTap: (() {}),
//                 child: Row(
//                   children: [
//                     Icon(Icons.camera),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text("From Camera")
//                   ],
//                 ),
//               )
//             ],
//           ),
//         );
//       });
// }
