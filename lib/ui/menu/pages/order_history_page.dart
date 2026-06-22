import 'package:flutter/material.dart';
import 'package:flutter_pos_template_2026/data/models/order_history_model.dart';
import 'package:flutter_pos_template_2026/ui/menu/widget/order_history_item.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({super.key});

  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  List<OrderHistoryModel> listOrderHistoryModel = [
    OrderHistoryModel(
      id: 3,
      code: '0001-62026',
      tableResto: 'Meja Satu',
      orderStatus: 'Belum Bayar',
      totalOrder: 366000.0,
      taxOrder: 43920.0,
      totalPayment: 409920.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order History')),
      body: ListView.builder(
        itemCount: listOrderHistoryModel.length,
        itemBuilder: (_, index) {
          OrderHistoryModel orderHistoryModel = listOrderHistoryModel[index];
          return OrderHistoryItem(orderHistoryModel: orderHistoryModel);
        },
      ),
    );
  }
}
