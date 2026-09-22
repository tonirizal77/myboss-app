import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myboss_app/core_feat/core_feat.dart';

part 'icon_animation.dart';
part 'ripple_animation.dart';


/// How to Used
/// 
// RippleAnimation(
//   repeat: true,
//   minRadius: 10,
//   color: primaryColor,
//   child: Container(
//     height: 18,
//     width: 18,
//     alignment: Alignment.center,
//     decoration: BoxDecoration(
//       color: currentNow ? primaryColor : cGrey,
//       shape: BoxShape.circle,
//     ),
//   ),
// )


/// Button Swith ModeView
// AnimatedIconCustom(
//   icon: AnimatedIcons.view_list,
//   initialState: state.modeViewCard == ModeViewCard.grid
//       ? AnimatedIconState.first
//       : AnimatedIconState.second,
//   onChangeView: () {
//     context.read<ProductBloc>().add(
//           ProductEvent.switchModeViewCard(
//             mode: state.modeViewCard == ModeViewCard.grid
//                 ? ModeViewCard.list
//                 : ModeViewCard.grid,
//           ),
//         );
//   },
// ),