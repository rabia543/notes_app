import 'package:auth_figma/notes/notespage1.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String _collection = 'items';

  // Create or Update an item
  Future<void> _saveItem(String id) async {
    await _firestore.collection(_collection).doc(id).set({
      'title': _titleController.text,
      'description': _descriptionController.text,
    });
    _titleController.clear();
    _descriptionController.clear();
  }

  // Read item by id
  Future<Map<String, dynamic>?> _getItem(String id) async {
    final doc = await _firestore.collection(_collection).doc(id).get();
    return doc.exists ? doc.data() : null;
  }

  // Delete item by id
  Future<void> _deleteItem(String id) async {
    await _firestore.collection(_collection).doc(id).delete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E3A8A),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 50,),
              Text("Notes",style: TextStyle(color: Colors.white,fontSize: 40)),
              TextField(
                controller: _titleController,
                decoration: InputDecoration(labelText: 'Title',labelStyle: TextStyle(color: Colors.white)),
              ),
              TextField(
                controller: _descriptionController,
                decoration: InputDecoration(labelText: 'Description',labelStyle: TextStyle(color: Colors.white)),
                maxLines: 15,
              ),
              SizedBox(height: 40,),
              Row(
                children: [
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () async {
                      // Replace 'your-document-id' with your actual document ID or generate one
                      await _saveItem('3UR9NYORvhbEQcqSC8bd');
                    },
                    child: Text('Save/Update'),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () async {
                      final item = await _getItem('3UR9NYORvhbEQcqSC8bd');
                      if (item != null) {
                        _titleController.text = item['title'];
                        _descriptionController.text = item['description'];
                      }
                    },
                    child: Text('Read'),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () async {
                      await _deleteItem('3UR9NYORvhbEQcqSC8bd');
                      _titleController.clear();
                      _descriptionController.clear();
                    },
                    child: Text('Delete'),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              ElevatedButton(
                onPressed: () async {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>notespage1(Title: _titleController.text)));
                },
                child: Text("back")
              ),
            ],
          ),
        ),
      ),
    );
  }
}
