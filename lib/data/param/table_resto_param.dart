class TableRestoParam {
  final String? code;
  final String? name;
  final int? capacity;
  final String? tableStatus;
  final String? status;

  TableRestoParam(
    this.code,
    this.name,
    this.capacity,
    this.tableStatus,
    this.status,
  );

  // for post and update
  Map<String, dynamic> toJsonNew() {
    return {'code': code, 'name': name, 'capacity': capacity};
  }

  Map<String, dynamic> toJsonUpdate() {
    return {
      'name': name,
      'capacity': capacity,
      'table_status': tableStatus,
      'status': status,
    };
  }
}
