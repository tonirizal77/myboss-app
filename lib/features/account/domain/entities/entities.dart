// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:myboss_app/features/account/account_ft.dart';

export 'about_us_model/about_us_model.dart';
export 'avatar_list_model/avatar_list_model.dart';
export 'contact_us_model/contact_us_model.dart';
export 'faq_model/faq_model.dart';
export 'profile_edit_model/profile_edit_model.dart';
export 'profile_model/profile_model.dart';
export 'specific_page_model/specific_page_model.dart';
export 'stamps_history_model/stamps_history_model.dart';
export 'tnc_model/tnc_model.dart';
export 'voucher_list_model/voucher_list_model.dart';
export 'gen_code_model/gen_code_model.dart';

/// Helpers
class EditProfile extends Equatable {
  final AvatarsModel? avatar;
  final String? name;

  const EditProfile({this.name, this.avatar});

  @override
  List<Object?> get props => [avatar, name];

  EditProfile copyWith({AvatarsModel? avatar, String? name}) {
    return EditProfile(avatar: avatar ?? this.avatar, name: name ?? this.name);
  }
}
