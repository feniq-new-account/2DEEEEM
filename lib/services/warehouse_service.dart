import '../models/warehouse.dart';

class WarehouseService {
  static final WarehouseService _instance = WarehouseService._internal();
  factory WarehouseService() => _instance;
  WarehouseService._internal();

  Future<List<Warehouse>> getWarehouses() async {
    return [];
  }
}
