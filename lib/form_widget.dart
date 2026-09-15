import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({ super.key });

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _namaController = TextEditingController();
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Form Widget")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _namaController,
                decoration: const InputDecoration(labelText: 'Nama Lengkap'),
                validator: (value) => value!.isEmpty ? 'Nama tidak boleh kosong' : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () { 
                if(_formKey.currentState!.validate()) {
                  showDialog(context: context, 
                  builder: (context) => AlertDialog(
                    title: const Text("Sukses"),
                    content: Text("Halo ${_namaController.text}!"),
                    actions: [
                      TextButton(onPressed: () => Navigator.pop(context), 
                      child: const Text("OK"))
                    ],
                  )
                  );
                }
              },
              child: Text("submit"),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(context: context, 
                  builder: (context) => Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: const Text("Ini adalah bottom sheet"),
                    ),
                  );
                },
                child: const Text("Klik untuk info bottom sheet", style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),),
              )
            ],
          )
          ),
        ),
    );
  }
}