class KonnectTransaction {
  final DateTime date;
  final String mobile;
  final String id;
  final double amount;
  final String status; // 'Pending' or 'Processed'

  KonnectTransaction({
    required this.date,
    required this.mobile,
    required this.id,
    required this.amount,
    required this.status,
  });
}