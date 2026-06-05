import 'package:flutter/material.dart';
import 'package:flutter_pos_template_2026/data/models/table_resto_model.dart';
import 'package:flutter_pos_template_2026/pages/table_resto_form.dart';
import 'package:iconsax/iconsax.dart';

class TableRestoPage extends StatefulWidget {
  const TableRestoPage({super.key});

  @override
  State<TableRestoPage> createState() => _TableRestoPageState();
}

class _TableRestoPageState extends State<TableRestoPage> {
  List<TableRestoModel> listTableResto = [
    TableRestoModel(
      id: 1,
      code: 'TR-001',
      name: 'Meja Satu',
      capacity: 2,
      tableStatus: 'Terisi',
      status: 'Aktif',
    ),
    TableRestoModel(
      id: 2,
      code: 'TR-002',
      name: 'Meja Dua',
      capacity: 2,
      tableStatus: 'Terisi',
      status: 'Aktif',
    ),
    TableRestoModel(
      id: 3,
      code: 'TR-003',
      name: 'Meja Tiga',
      capacity: 4,
      tableStatus: 'Kosong',
      status: 'Aktif',
    ),
    TableRestoModel(
      id: 4,
      code: 'TR-004',
      name: 'Meja Empat',
      capacity: 4,
      tableStatus: 'Kosong',
      status: 'Aktif',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Table Resto')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TableRestoForm()),
          );
        },
        child: Icon(Iconsax.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
          ),
          itemBuilder: (_, index) {
            return GestureDetector(
              onTap: () {
                debugPrint('Tap ${listTableResto[index].name}');
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey),
                  color: listTableResto[index].tableStatus == 'Terisi'
                      ? Theme.of(context).colorScheme.inversePrimary
                      : Colors.grey.shade100,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${listTableResto[index].name}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      spacing: 5,
                      children: [
                        Icon(Icons.people),
                        Text('${listTableResto[index].capacity}'),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: listTableResto.length,
        ),
      ),
    );
  }
}
