import 'package:flutter/material.dart';
import 'package:flutter_pos_template_2026/data/models/menu_resto_model.dart';
import 'package:flutter_pos_template_2026/ui/menu/widget/menu_resto_item.dart';

class MenuRestoPage extends StatefulWidget {
  const MenuRestoPage({super.key});

  @override
  State<MenuRestoPage> createState() => _MenuRestoPageState();
}

class _MenuRestoPageState extends State<MenuRestoPage> {
  List<MenuRestoModel> listMenuResto = [
    MenuRestoModel(
      id: 1,
      code: "MN-0001",
      name: "Nasi Putih",
      price: 10000.0,
      description: "-",
      imageMenu:
          "http://127.0.0.1:8000/media/menu_images/nasi_putih_1fVOTlc.jpg",
      category: "Nasi Bungkus",
      menuStatus: "Ada",
      status: "Aktif",
    ),
    MenuRestoModel(
      id: 2,
      code: "MN-0002",
      name: "Nasi + Sayur + Kuah + Sambel",
      price: 12000.0,
      description: "-",
      imageMenu:
          "http://127.0.0.1:8000/media/menu_images/nasi_sayur_kuah_sambel.jpg",
      category: "Nasi Bungkus",
      menuStatus: "Ada",
      status: "Aktif",
    ),
    MenuRestoModel(
      id: 3,
      code: "MN-0003",
      name: "Nasi Perkedel",
      price: 20000.0,
      description: "-",
      imageMenu: "http://127.0.0.1:8000/media/menu_images/nasi_perkedel.jpg",
      category: "Nasi Bungkus",
      menuStatus: "Ada",
      status: "Aktif",
    ),
    MenuRestoModel(
      id: 4,
      code: "MN-0004",
      name: "Nasi Telur Dadar",
      price: 20000.0,
      description: "-",
      imageMenu: "http://127.0.0.1:8000/media/menu_images/nasi_telur_dadar.jpg",
      category: "Nasi Bungkus",
      menuStatus: "Ada",
      status: "Aktif",
    ),
    MenuRestoModel(
      id: 5,
      code: "MN-0005",
      name: "Nasi Telur Gulai",
      price: 20000.0,
      description: "-",
      imageMenu: "http://127.0.0.1:8000/media/menu_images/nasi_telur_gulai.jpg",
      category: "Nasi Bungkus",
      menuStatus: "Ada",
      status: "Aktif",
    ),
    MenuRestoModel(
      id: 6,
      code: "MN-0006",
      name: "Nasi Telur Balado",
      price: 20000.0,
      description: "Nasi + Lauk + Sayur + Kuah + Sambel",
      imageMenu:
          "http://127.0.0.1:8000/media/menu_images/nasi_telur_balado.jpg",
      category: "Nasi Bungkus",
      menuStatus: "Ada",
      status: "Aktif",
    ),
    MenuRestoModel(
      id: 7,
      code: "MN-0007",
      name: "Nasi Padang Rendang",
      price: 27000.0,
      description: "Nasi + Lauk + Sayur + Kuah + Sambel",
      imageMenu:
          "http://127.0.0.1:8000/media/menu_images/nasi_padang_rendang.jpg",
      category: "Nasi Bungkus",
      menuStatus: "Ada",
      status: "Aktif",
    ),
    MenuRestoModel(
      id: 8,
      code: "MN-0008",
      name: "Nasi Padang Ayam Bakar",
      price: 26000.0,
      description: "Nasi + Lauk + Sayur + Kuah + Sambel",
      imageMenu:
          "http://127.0.0.1:8000/media/menu_images/nasi_padang_ayam_bakar.jpg",
      category: "Nasi Bungkus",
      menuStatus: "Ada",
      status: "Aktif",
    ),
    MenuRestoModel(
      id: 9,
      code: "MN-0009",
      name: "Nasi Padang Ayam Goreng",
      price: 26000.0,
      description: "Nasi + Lauk + Sayur + Kuah + Sambel",
      imageMenu:
          "http://127.0.0.1:8000/media/menu_images/nasi_padang_ayam_goreng.jpg",
      category: "Nasi Bungkus",
      menuStatus: "Ada",
      status: "Aktif",
    ),
    MenuRestoModel(
      id: 10,
      code: "MN-0010",
      name: "Nasi Padang Ayam Gulai",
      price: 26000.0,
      description: "Nasi + Lauk + Sayur + Kuah + Sambel",
      imageMenu:
          "http://127.0.0.1:8000/media/menu_images/nasi_padang_ayam_gulai.jpg",
      category: "Nasi Bungkus",
      menuStatus: "Ada",
      status: "Aktif",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu Resto')),
      body: ListView.builder(
        itemCount: listMenuResto.length,
        itemBuilder: (_, index) {
          MenuRestoModel menuRestoModel = listMenuResto[index];
          return MenuRestoItem(menuRestoModel: menuRestoModel);
        },
      ),
    );
  }
}
