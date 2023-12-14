import 'package:intl/intl.dart';

class Dates {
  final DateTime maximum;
  final DateTime minimum;

  const Dates({required this.maximum, required this.minimum});

  Dates.fromJson(Map<String, dynamic> json)
      : maximum = DateTime.parse(json['maximum'] as String),
        minimum = DateTime.parse(json['minimum'] as String);

  Map<String, dynamic> toJson() => {
        'maximum': DateFormat('yyyy-MM-dd').format(maximum),
        'minimum': DateFormat('yyyy-MM-dd').format(minimum)
      };
}
