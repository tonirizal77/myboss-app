import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart' show visibleForTesting;

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/account/account_ft.dart';
import 'package:myboss_app/features/promo/domain/entities/promo/promo.dart'
    show Voucher;

part 'datasource/profile_remote.dart';
part 'datasource/account_remote.dart';

part 'repository/profile_repo_impl.dart';
part 'repository/account_repo_impl.dart';

part 'datasource/points_static.dart';
part 'datasource/points_remote.dart';
part 'repository/points_repo_impl.dart';

part 'datasource/voucher_remote.dart';
part 'repository/voucher_repo_impl.dart';
