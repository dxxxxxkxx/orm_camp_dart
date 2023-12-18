class Bank {
  final String? name;
  final String? address;
  final String? phoneNumStr;

  const Bank({
    required this.name,
    required this.address,
    required this.phoneNumStr,
  });

  Bank.fromJson(Map<String, dynamic> json)
      : name = json['name']?.toString() ?? '',
        address = json['address']?.toString() ?? '',
        phoneNumStr = json['phoneNumStr']?.toString() ?? '';

  Map<String, dynamic> toJson() => {
        'name': name ?? '',
        'address': address ?? '',
        'phoneNumStr': phoneNumStr ?? ''
      };
}
