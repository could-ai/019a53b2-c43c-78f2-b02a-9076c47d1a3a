import '../models/cash_transaction.dart';
import '../models/konnect_transaction.dart';

class TransactionService {
  TransactionService._privateConstructor();
  static final TransactionService _instance = TransactionService._privateConstructor();
  factory TransactionService() => _instance;

  final List<CashTransaction> _cashTransactions = [];
  final List<KonnectTransaction> _konnectTransactions = [];

  void addCashTransaction(CashTransaction tx) {
    _cashTransactions.add(tx);
  }

  List<CashTransaction> get cashTransactions => List.unmodifiable(_cashTransactions);

  List<CashTransaction> cashTransactionsOn(DateTime date) {
    return _cashTransactions.where((tx) => isSameDate(tx.date, date)).toList();
  }

  void addKonnectTransaction(KonnectTransaction tx) {
    _konnectTransactions.add(tx);
  }

  List<KonnectTransaction> get konnectTransactions => List.unmodifiable(_konnectTransactions);

  List<KonnectTransaction> konnectTransactionsOn(DateTime date) {
    return _konnectTransactions.where((tx) => isSameDate(tx.date, date)).toList();
  }

  bool isSameDate(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }
}