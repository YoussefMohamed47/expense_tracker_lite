// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:expense_tracker_lite/app/services/services.dart';
// import 'package:expense_tracker_lite/presentation/Screens/Home/cubit/home_cubit.dart';
// import 'package:expense_tracker_lite/presentation/Screens/Home/cubit/home_state.dart';
// import 'package:expense_tracker_lite/presentation/common/widget/error_pop_up_widget.dart';
//
// class HomeBlocListener extends StatelessWidget {
//   const HomeBlocListener({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<HomeCubit, HomeState>(
//       bloc: instance<HomeCubit>(),
//       listenWhen: (previous, current) =>
//           previous.isLoading != current.isLoading ||
//           previous.error != current.error ||
//           previous.dashboardData != current.dashboardData,
//       listener: (context, state) {
//         // if (state.isLoading) {
//         //   showDialog(
//         //     context: context,
//         //     barrierDismissible: false,
//         //     builder: (context) => const Center(
//         //       child: CircularProgressIndicator(
//         //         color: AppColors.primary,
//         //       ),
//         //     ),
//         //   );
//         // } else {
//         //   // لو مش في حالة لودينج نقفل الـ Dialog لو مفتوح
//         //   context.pop();
//         // }
//
//         if (state.error != null) {
//           ErrorPopUpWidget.show(
//             buttonText: "Back",
//             context: context,
//             errorMessage: state.error!.message,
//             onButtonPressed: () => Navigator.of(context).pop(),
//           );
//         }
//
//         if (state.dashboardData != null) {
//           // Dashboard loaded successfully
//           // ممكن تعمل أي حاجة إضافية هنا لو محتاج
//         }
//       },
//       child: const SizedBox.shrink(),
//     );
//   }
// }
