import 'dart:async';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

class StampsFlows {
  const StampsFlows._();

  /// === LISTENERS ===
  ///
  static FutureOr<void> listenSocketStampsNotif(
    BuildContext context,
    StampsNotifState state, {
    VoidCallback? callback,
  }) async {
    final _dataNotif = state.stampsNotif.data;
    final _noOrder = _dataNotif.salesOrderNo;

    /// sales_return, sales, sales_void
    //  - sales (penjualan +stampt)
    //  - ⁠sales_void (pembatalan penjualan -stampt)
    //  - ⁠sales_return (pengembalian penjualan -stampt)
    /// - sales_redeem_free_product (redeem -stampt free count)
    ///
    final _notifType = state.stampsNotif.notifType;
    final _ket = _notifType == "sales"
        ? "penambahan"
        : _notifType == "sales_return"
        ? "pengembalian"
        : _notifType == "sales_void"
        ? "pembatalan"
        : _notifType == "sales_redeem_free_product"
        ? "penukaran"
        : _notifType;

    final _ketColor = _notifType == "sales"
        ? AppColors.primary
        : _notifType == "sales_return"
        ? Colors.amberAccent
        : _notifType == "sales_void"
        ? AppColors.warning
        : Colors.red[100];

    final _ketColor1 = _notifType == "sales"
        ? Colors.white
        : _notifType == "sales_return"
        ? Colors.black
        : Colors.white;

    if (state.action == ActionNotif.getNotif && _noOrder != null) {
      getIt<FlushbarHelper>().showToastNotif(
        context: context,
        posisi: Responsive.isMobile(context)
            ? FlushbarPosition.TOP
            : FlushbarPosition.BOTTOM,
        bgColor: _ketColor,
        second: 7,
        autoClose: true,
        messageText: RichText(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          text: TextSpan(
            children: [
              TextSpan(
                text: "Ada",
                style: AppTextStyles.body.copyWith(color: _ketColor1),
              ),
              TextSpan(
                text: " $_ket ",
                style: AppTextStyles.body.copyWith(color: _ketColor1),
              ),
              TextSpan(
                text: "stamps atas transaksi No: ",
                style: AppTextStyles.body.copyWith(color: _ketColor1),
              ),
              TextSpan(
                text: "#$_noOrder",
                style: AppTextStyles.body.copyWith(
                  fontWeight: FontWeight.bold,
                  color: _ketColor1,
                ),
              ),
            ],
          ),
        ),
      );

      callback != null ? callback() : null;
    }
  }

  /// === Functions ===
  ///
  static bool get isLoading =>
      getIt<StampsCubit>().state.status == Status.loading;

  static StampsModel get stamps => getIt<StampsCubit>().state.stamps;

  static List<StampsOption> get stampsOptions =>
      getIt<StampsCubit>().state.stampsOptions.data?.toList() ?? [];

  static List<int> get breakPoints {
    return stampsOptions.map((el) => el.redeemedPoints).toList();
  }

  static FutureOr<void> getStamps(
    BuildContext context, {
    DataMap? param,
  }) async {
    context.read<StampsCubit>().getStamps(param: param);
  }

  static FutureOr<void> getStampsBreak(BuildContext context) async {
    context.read<StampsCubit>().getStampsBreak();
  }
}
