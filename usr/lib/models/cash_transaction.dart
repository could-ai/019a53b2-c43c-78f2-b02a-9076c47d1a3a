class CashTransaction {
  final DateTime date;
  final String category; // Money Transfer, Foodpanda, Load, Withdrawal, Normal
  final double amount; // Positive for cash in, negative for cash out
  final double profit;

  CashTransaction({
    required this.date,
    required this.category,
    required this.amount,
    required this.profit,
  });
}