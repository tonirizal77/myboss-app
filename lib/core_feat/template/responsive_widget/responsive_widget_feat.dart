import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solar_icons/solar_icons.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

/// Hayo's own page shell (root page + router wrapper + main header) - kept
/// out of mobile_app_core's generic responsive template since it composes
/// app-specific widgets (user session, profile, main flows, concrete
/// routes) rather than being reusable as-is in another project.
part 'responsive_header.dart';
part 'responsive_root_page.dart';
part 'responsive_routers.dart';
