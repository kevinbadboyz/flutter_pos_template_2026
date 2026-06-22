class OrderHistoryModel {
  final int? id;
  final String? code;
  final String? tableResto;
  final String? orderStatus;
  final double? totalOrder;
  final double? taxOrder;
  final double? totalPayment;

  OrderHistoryModel({
    required this.id,
    required this.code,
    required this.tableResto,
    required this.orderStatus,
    required this.totalOrder,
    required this.taxOrder,
    required this.totalPayment,
  });

  factory OrderHistoryModel.fromJson(Map<String, dynamic> json) {
    return OrderHistoryModel(
      id: json['id'],
      code: json['code'],
      tableResto: json['table_resto'],
      orderStatus: json['order_status'],
      totalOrder: json['total_order'],
      taxOrder: json['tax_order'],
      totalPayment: json['total_payment'],
    );
  }
}
