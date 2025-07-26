class MockModel {
  final int id;
  final String title;
  final int amount;

  MockModel({required this.id, required this.title, required this.amount});

  factory MockModel.fromJson(Map<String, dynamic> json) =>
      MockModel(id: (json['id'] as num).toInt(), title: json["title"], amount: (json["amount"] as num).toInt());

  Map<String, dynamic> toJson() => {'id': id, 'title': title, 'amount': amount};
}
