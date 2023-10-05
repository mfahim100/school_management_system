import 'package:flutter/widgets.dart';
import 'package:school_manegment_system/core/services/database_services.dart';

import '../models/expenseModel.dart';

class ExpenseProvider extends ChangeNotifier{

  final expenseFromKey = GlobalKey<FormState>();

  final TextEditingController _descriptionController = TextEditingController();
  TextEditingController get descriptionController => _descriptionController;

  final TextEditingController _cashInController = TextEditingController();
  TextEditingController get cashInController => _cashInController;

  final TextEditingController _cashOutController = TextEditingController();
  TextEditingController get cashOutController => _cashOutController;



  String? descriptionValidator(String? txt){
    if(txt!.isEmpty){
      return 'Please Fill the Description';
    }
    return null;

  }

  String? cashInValidator(String? txt){
    if(txt!.isEmpty){
      return 'Please Fill the Cash In';
    }
    return null;

  }

  String? cashOutValidator(String? txt){
    if(txt!.isEmpty){
      return 'Please Fill the Cash Out';
    }
    return null;

  }


  void clearController(){
    _descriptionController.clear();
    _cashInController.clear();
    _cashOutController.clear();

  }



  List<ExpenseModel> allExpenseProvider =[];
 Future<void> getAllExpenseProvider() async {
    allExpenseProvider.clear();
    DatabaseServices db = DatabaseServices();
    allExpenseProvider = await db.getAllExpense();
    notifyListeners();

  }

/// Total Cash Out
  int _totalCashIn = 0;
  int  get totalCashIn => _totalCashIn;
  List<ExpenseModel> getTotalCashInList = [];
  Future<void> getTotalCashIn() async {
    getTotalCashInList.clear();
    _totalCashIn=0;
    DatabaseServices db = DatabaseServices();
    getTotalCashInList = await db.getAllExpense();
    for (int i = 0; i < getTotalCashInList.length; i++) {
      _totalCashIn = _totalCashIn + getTotalCashInList[i].cashIn!;
      print(_totalCashIn);
    }

    print('total Cash In is ${_totalCashIn.toString()}');
  }



  ///Total Cash Out
  int _totalCashOut = 0;
  int  get totalCashOut => _totalCashOut;
  List<ExpenseModel> getTotalCashOutList = [];
  Future<void> getTotalCashOut() async {
    getTotalCashOutList.clear();
    _totalCashOut=0;
    DatabaseServices db = DatabaseServices();
    getTotalCashOutList = await db.getAllExpense();
    for (int i = 0; i < getTotalCashOutList.length; i++) {
      _totalCashOut = _totalCashOut + getTotalCashOutList[i].cashOut!;
      print(_totalCashOut);
    }

    print('total Cash Out is ${_totalCashOut.toString()}');
  }





  Future<void> cashIn() async {
   String description = _descriptionController.text.trim();
   int cashIn = int.parse(_cashInController.text.trim());

    ExpenseModel expenseModel = ExpenseModel(
      id: 0,
      description: description,
      cashIn: cashIn,
      cashOut: 0,
      date: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day).millisecondsSinceEpoch,
      month: DateTime(DateTime.now().year,DateTime.now().month).millisecondsSinceEpoch,
      total: _totalCashIn+cashIn
    );
    DatabaseServices db = DatabaseServices();
    await db.addExpense(expenseModel);
    clearController();
    getTotalCashIn();
    getAllExpenseProvider();
    print('Every thing gone Find');
  }


  Future<void> cashOut() async {
    String description = _descriptionController.text.trim();
    int cashOut = int.parse(_cashOutController.text.trim());
    ExpenseModel expenseModel = ExpenseModel(
      id: 0,
      description: description,
      cashIn: 0,
      cashOut: cashOut,
      date:DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day).millisecondsSinceEpoch,
      month: DateTime(DateTime.now().year,DateTime.now().month).millisecondsSinceEpoch,
      total: _totalCashOut+cashOut
    );

    DatabaseServices db = DatabaseServices();
    await db.addExpense(expenseModel);
    clearController();
     getTotalCashOut();
    getAllExpenseProvider();
    print('Every thing gone Find');
  }




  List<ExpenseModel> getExpenseByDate = [];
  Future<void> getExpenseByDateProvider() async {
    int date =DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day).millisecondsSinceEpoch;
    getExpenseByDate.clear();
    DatabaseServices db = DatabaseServices();
    getExpenseByDate = await db.getExpenseByDay(date);
    print(date);
    print('length is $getExpenseByDate');
    notifyListeners();

  }


/// get total cashIn of Day
  int _totalDailyCashIn= 0;
  int get totalDailyCashIn => _totalDailyCashIn;
  List<ExpenseModel> getDateTotalCashIn = [];
  Future<void> getDateTotalCashInProvider() async {
    int date =DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day).millisecondsSinceEpoch;
    getDateTotalCashIn.clear();
    _totalDailyCashIn = 0;
    DatabaseServices db = DatabaseServices();
    getDateTotalCashIn = await db.getExpenseByDay(date);
    for (int i = 0; i < getDateTotalCashIn.length; i++) {
      _totalDailyCashIn = _totalDailyCashIn + getDateTotalCashIn[i].cashIn!;
      print(_totalDailyCashIn);
    }
    print(date);
    print('length is $getDateTotalCashIn');
    notifyListeners();

  }


  /// get total CashOut of Day
  int _totalDailyCashOut= 0;
  int get totalDailyCashOut => _totalDailyCashOut;
  List<ExpenseModel> getDateTotalCashOut = [];
  Future<void> getDateTotalCashOutProvider() async {
    int date =DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day).millisecondsSinceEpoch;
    getDateTotalCashOut.clear();
    _totalDailyCashOut = 0;
    DatabaseServices db = DatabaseServices();
    getDateTotalCashOut = await db.getExpenseByDay(date);
    for (int i = 0; i < getDateTotalCashOut.length; i++) {
      _totalDailyCashOut = _totalDailyCashOut + getDateTotalCashOut[i].cashOut!;
      print(_totalDailyCashOut);
    }
    print(date);
    print('length is $getDateTotalCashIn');
    notifyListeners();

  }







  String _monthSelection = "";
  String get admittedClass => _monthSelection;
  setMonth(String val) {
    _monthSelection = val;
    print(_monthSelection);
    notifyListeners();
  }
  int decideMonth(){

    if(_monthSelection == 'January'){
      return DateTime(DateTime.now().year,DateTime.january).millisecondsSinceEpoch;
    }
    else if(_monthSelection == 'February'){
      return DateTime(DateTime.now().year,DateTime.february).millisecondsSinceEpoch;
    }

    else if(_monthSelection == 'March'){
      return DateTime(DateTime.now().year,DateTime.march).millisecondsSinceEpoch;
    }

    else if(_monthSelection == 'April'){
      return DateTime(DateTime.now().year,DateTime.april).millisecondsSinceEpoch;
    }

    else if(_monthSelection == 'May'){
      return DateTime(DateTime.now().year,DateTime.may).millisecondsSinceEpoch;
    }


    else if(_monthSelection == 'June'){
      return DateTime(DateTime.now().year,DateTime.june).millisecondsSinceEpoch;
    }


    else if(_monthSelection == 'July'){
      return DateTime(DateTime.now().year,DateTime.july).millisecondsSinceEpoch;
    }


    else if(_monthSelection == 'August'){
      return DateTime(DateTime.now().year,DateTime.august).millisecondsSinceEpoch;
    }

    else if(_monthSelection == 'September'){
      return DateTime(DateTime.now().year,DateTime.september).millisecondsSinceEpoch;
    }

    else if(_monthSelection == 'October'){
      return DateTime(DateTime.now().year,DateTime.october).millisecondsSinceEpoch;
    }

    else if(_monthSelection == 'November'){
      return DateTime(DateTime.now().year,DateTime.november).millisecondsSinceEpoch;
    }

    else {
      return DateTime(DateTime.now().year,DateTime.december).millisecondsSinceEpoch;
    }

  }




/// Monthly Expense
  List<ExpenseModel> getExpenseByMonth = [];
  Future<void> getExpenseByMonthProvider() async {
    int month = decideMonth();
    getExpenseByMonth.clear();
    DatabaseServices db = DatabaseServices();
    getExpenseByMonth = await db.getExpenseByMonth(month);
    print(month);
    print('length is $getExpenseByMonth');
    notifyListeners();

  }


///Cash In Monthly
  int _totalMonthLyCashIn= 0;
  int get totalMonthLyCashIn => _totalMonthLyCashIn;
  List<ExpenseModel> getMonthlyTotalCashIn = [];
  Future<void> getMonthlyTotalCashInProvider() async {
    int month = decideMonth();
    getMonthlyTotalCashIn.clear();
    _totalMonthLyCashIn = 0;
    DatabaseServices db = DatabaseServices();
    getMonthlyTotalCashIn = await db.getExpenseByMonth(month);
    for (int i = 0; i < getMonthlyTotalCashIn.length; i++) {
      _totalMonthLyCashIn = _totalMonthLyCashIn + getMonthlyTotalCashIn[i].cashIn!;
      print(_totalMonthLyCashIn);
    }
    print('length is $getDateTotalCashIn');
    notifyListeners();

  }



  ///Cash out Monthly
  int _totalMonthLyCashOut= 0;
  int get totalMonthLyCashOut => _totalMonthLyCashOut;
  List<ExpenseModel> _totalMonthLyTotalCashOut = [];
  Future<void> getTotalMonthLyCashOutProvider() async {
    int month = decideMonth();
    _totalMonthLyTotalCashOut.clear();
    _totalMonthLyCashOut = 0;
    DatabaseServices db = DatabaseServices();
    _totalMonthLyTotalCashOut = await db.getExpenseByMonth(month);
    for (int i = 0; i < _totalMonthLyTotalCashOut.length; i++) {
      _totalMonthLyCashOut = _totalMonthLyCashOut + _totalMonthLyTotalCashOut[i].cashOut!;
      print(_totalMonthLyCashIn);
    }
    print('length is $getDateTotalCashIn');
    notifyListeners();

  }


}