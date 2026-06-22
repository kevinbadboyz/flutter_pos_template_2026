import 'package:flutter/material.dart';

class TableRestoForm extends StatefulWidget {
  const TableRestoForm({super.key});

  @override
  State<TableRestoForm> createState() => _TableRestoFormState();
}

class _TableRestoFormState extends State<TableRestoForm> {
  final tecCode = TextEditingController();
  final tecName = TextEditingController();
  final tecCapacity = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final listTableStatus = ['Kosong', 'Terisi'];
  final listStatus = ['Aktif', 'Non-Aktif'];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    tecCode.dispose();
    tecName.dispose();
    tecCapacity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Table Resto Form')),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 20,
              children: [
                TextFormField(
                  controller: tecCode,
                  keyboardType: TextInputType.name,
                  validator: (value) => value == null || value.isEmpty
                      ? 'Kode meja masih kosong'
                      : null,
                  decoration: InputDecoration(
                    labelText: 'Kode Meja',
                    hintText: 'Masukkan kode meja',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                ),
                TextFormField(
                  controller: tecName,
                  keyboardType: TextInputType.name,
                  validator: (value) => value == null || value.isEmpty
                      ? 'Nama meja masih kosong'
                      : null,
                  decoration: InputDecoration(
                    labelText: 'Nama Meja',
                    hintText: 'Masukkan nama meja',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                ),
                TextFormField(
                  controller: tecCapacity,
                  keyboardType: TextInputType.number,
                  validator: (value) => value == null || value.isEmpty
                      ? 'Kapasitas meja masih kosong'
                      : null,
                  decoration: InputDecoration(
                    labelText: 'Kapasitas Meja',
                    hintText: 'Masukkan kapasitas meja',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Status Meja',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    )
                  ),
                  initialValue: listTableStatus[0],
                  items: listTableStatus
                      .map(
                        (String element) =>
                            DropdownMenuItem<String>(value: element,child: Text(element),),
                      )
                      .toList(),
                  onChanged: (String? newValue) {},
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                      labelText: 'Status',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      )
                  ),
                  initialValue: listStatus[0],
                  items: listStatus
                      .map(
                        (String element) =>
                        DropdownMenuItem<String>(value: element,child: Text(element),),
                  )
                      .toList(),
                  onChanged: (String? newValue) {},
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(
                        context,
                      ).colorScheme.inversePrimary,
                      foregroundColor: Theme.of(context).colorScheme.secondary,
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Data berhasil disimpan...')),
                        );
                      }
                    },
                    child: Text(
                      'SIMPAN',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
