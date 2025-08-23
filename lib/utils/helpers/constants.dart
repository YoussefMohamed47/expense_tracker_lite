import 'package:expense_tracker_lite/core/data/models/category_model.dart';
import 'package:expense_tracker_lite/core/data/models/expense_model.dart';
import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:expense_tracker_lite/utils/resources/assets_manager.dart';

class Constants {
  static const String baseUrl = "https://v6.exchangerate-api.com/v6/";
  static const String apiKey = "37717da277edd335ec371518";
  static const String empty = "";
  static const String token = "SEND TOKEN HERE";

  static const String exchangeRateKey = "exchangeRateKey";
  static const String expenseKey = "expense_box";
  static const int zero = 0;
  static const int apiTimeOut = 60000;
  static const int shortTime = 2;
  static const int mediumTime = 5;
  static const int longTime = 10;
  static const int PAGE_SIZED_CATEGORY = 6;
  static const int PAGE_SIZED = 10;
  static const int CACHE_TIME_INTERVAL = 2 * 60;

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
  static List<CategoryModel> categories = [
    CategoryModel(
      id: 1,
      name: "Groceries",
      icon: IconAssets.cartIcon,
      backgroundColor: AppColors.blue100,
      iconColor: AppColors.primary,
    ),
    CategoryModel(
      id: 2,
      name: "Entertainment",
      icon: IconAssets.popCornIcon,
      iconColor: AppColors.sage,
      backgroundColor: AppColors.sage.withValues(alpha: 0.5),
    ),
    CategoryModel(
      id: 3,
      name: "Gas",
      icon: IconAssets.gasStationIcon,
      iconColor: AppColors.pinkish,
      backgroundColor: AppColors.pinkish.withValues(alpha: 0.5),
    ),
    CategoryModel(
      id: 4,
      name: "Shopping",
      icon: IconAssets.cartBagIcon,
      iconColor: AppColors.lightAmber,
      backgroundColor: AppColors.lightAmber.withValues(alpha: 0.5),
    ),
    CategoryModel(
      id: 5,
      name: "News Paper",
      icon: IconAssets.newsPaperIcon,
      iconColor: AppColors.sage,
      backgroundColor: AppColors.sage.withValues(
        alpha: 0.5,
      ),
    ),
    CategoryModel(
      id: 6,
      name: "Transport",
      icon: IconAssets.carIcon,
      backgroundColor: AppColors.skyBlue,
      iconColor: AppColors.primary,
    ),
    CategoryModel(
      id: 7,
      name: "Rent",
      icon: IconAssets.rentIcon,
      iconColor: AppColors.sage,
      backgroundColor: AppColors.sage.withValues(
        alpha: 0.5,
      ),
    ),
  ];
}
