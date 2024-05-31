// To parse this JSON data, do
//
//     final statisticsModel = statisticsModelFromJson(jsonString);

import 'dart:convert';

StatisticsModel statisticsModelFromJson(String str) => StatisticsModel.fromJson(json.decode(str));

String statisticsModelToJson(StatisticsModel data) => json.encode(data.toJson());

class StatisticsModel {
  int productCount;
  int brandCount;
  int userCount;
  int roleCount;
  int admittedTicketsCount;
  List<DataEnterBarChart> dataEnterBarChart;
  dynamic productByBrandTypePieChart;

  StatisticsModel({
    required this.productCount,
    required this.brandCount,
    required this.userCount,
    required this.roleCount,
    required this.admittedTicketsCount,
    required this.dataEnterBarChart,
    required this.productByBrandTypePieChart,
  });

  factory StatisticsModel.fromJson(Map<String, dynamic> json) => StatisticsModel(
    productCount: json["productCount"],
    brandCount: json["brandCount"],
    userCount: json["userCount"],
    roleCount: json["roleCount"],
    admittedTicketsCount: json["admittedTicketsCount"],
    dataEnterBarChart: List<DataEnterBarChart>.from(json["dataEnterBarChart"].map((x) => DataEnterBarChart.fromJson(x))),
    productByBrandTypePieChart: json["productByBrandTypePieChart"],
  );

  Map<String, dynamic> toJson() => {
    "productCount": productCount,
    "brandCount": brandCount,
    "userCount": userCount,
    "roleCount": roleCount,
    "admittedTicketsCount": admittedTicketsCount,
    "dataEnterBarChart": List<dynamic>.from(dataEnterBarChart.map((x) => x.toJson())),
    "productByBrandTypePieChart": productByBrandTypePieChart,
  };
}

class DataEnterBarChart {
  String name;
  List<int> data;

  DataEnterBarChart({
    required this.name,
    required this.data,
  });

  factory DataEnterBarChart.fromJson(Map<String, dynamic> json) => DataEnterBarChart(
    name: json["name"],
    data: List<int>.from(json["data"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "data": List<dynamic>.from(data.map((x) => x)),
  };
}
