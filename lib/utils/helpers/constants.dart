import 'package:expense_tracker_lite/core/data/models/expense_model.dart';
import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:expense_tracker_lite/utils/resources/assets_manager.dart';

class Constants {
  //static const String baseUrl = "https://api.platform.ALASSEMA.com/api/v1";
  static const String baseUrl = "http://69.10.56.98:81/backend/api/";
  static const String empty = "";
  static const String token = "SEND TOKEN HERE";

  static const String userModel = "userModel";
  static const String workItemPriorityKey = "workItemPriorityKey";
  static const String workItemStatusKey = "workItemStatusKey";
  static const String workItemTagsKey = "workItemTagsKey";

  static const int zero = 0;
  static const int apiTimeOut = 60000;
  static const int shortTime = 2;
  static const int mediumTime = 5;
  static const int longTime = 10;
  static const int PAGE_SIZED_CATEGORY = 6;
  static const int PAGE_SIZED = 10;
  static const int CACHE_TIME_INTERVAL = 2 * 60;
  static const String FAMOUSECATEGORY_KEY = "FAMOUSECATEGORY_KEY";
  static const String HOMEKEYCACHE = 'HOME_KEY_CACHE';
  static const String AllMALLSKEYCACHE = 'All_MALLS_KEY_CACHE';
  static const String AllCOMPOUNDSKEYCACHE = 'All_COMPOUNDS_KEY_CACHE';
  static const String AllCOMPANIESSKEYCACHE = 'All_COMPANIES_KEY_CACHE';
  static const String noDataText = 'no_data';
  static const int splashDelay = 2;
  static const int sliderAnimationTime = 300;
  static const int mnsaId = 1;
  static const int libraryId = 2;
  static String? selectedTimeForTasl;

  static const List<String> filterList = [
    "This Month",
    "Last 7 Days",
  ];

  static List<ExpenseModel> homeRecentExpense = [
    ExpenseModel(
      id: 1,
      category: "Groceries",
      source: "Manually",
      amount: "-100",
      date: DateTime.now(),
      icon: IconAssets.cartIcon,
      backgroundColor: AppColors.blue100,
      iconColor: AppColors.primary,
    ),
    ExpenseModel(
      id: 2,
      category: "Entertainment",
      source: "Manually",
      amount: "-100",
      date: DateTime.now(),
      icon: IconAssets.popCornIcon,
      iconColor: AppColors.sage,
      backgroundColor: AppColors.sage.withValues(alpha: 0.5),
    ),
    ExpenseModel(
      id: 3,
      category: "Transportation",
      source: "Manually",
      amount: "-100",
      date: DateTime.now(),
      icon: IconAssets.carIcon,
      backgroundColor: AppColors.skyBlue,
      iconColor: AppColors.primary,
    ),
    ExpenseModel(
      id: 4,
      category: "Rent",
      source: "Manually",
      amount: "-100",
      date: DateTime.now(),
      icon: IconAssets.rentIcon,
      iconColor: AppColors.sage,
      backgroundColor: AppColors.sage.withValues(
        alpha: 0.5,
      ),
    ),
  ];
}
