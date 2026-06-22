import 'package:flutter/material.dart';
import 'package:flutter_pos_template_2026/data/models/order_history_model.dart';
import 'package:intl/intl.dart';

class OrderHistoryItem extends StatelessWidget {
  final OrderHistoryModel orderHistoryModel;

  const OrderHistoryItem({super.key, required this.orderHistoryModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white60,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Kode Pesanan'), Text('${orderHistoryModel.code}')],
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Nomor Meja'),
                  Text('${orderHistoryModel.tableResto}'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Status Pesanan'),
                  Text('${orderHistoryModel.orderStatus}'),
                ],
              ),
              Divider(thickness: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sub Total'),
                  Text(
                    NumberFormat.currency(
                      locale: 'id_ID',
                      symbol: '',
                      decimalDigits: 0,
                    ).format(orderHistoryModel.totalOrder),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Pajak'),
                  Text(
                    NumberFormat.currency(
                      locale: 'id_ID',
                      symbol: '',
                      decimalDigits: 0,
                    ).format(orderHistoryModel.taxOrder),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Bayar'),
                  Text(
                    NumberFormat.currency(
                      locale: 'id_ID',
                      symbol: 'Rp. ',
                      decimalDigits: 0,
                    ).format(orderHistoryModel.totalPayment),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
