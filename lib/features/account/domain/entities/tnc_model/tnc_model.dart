import 'package:freezed_annotation/freezed_annotation.dart';

part 'tnc_model.freezed.dart';
part 'tnc_model.g.dart';

/// `GET /terms-and-policy` - the documents of the main store (terms of use,
/// privacy policy, refund policy, ...).
@freezed
abstract class TncModel with _$TncModel {
  const TncModel._();

  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory TncModel({@Default([]) List<TncItemModel> data}) = _TncModel;

  factory TncModel.fromJson(Map<String, dynamic> json) =>
      _$TncModelFromJson(json);

  /// Documents to show: published, active and with a text.
  List<TncItemModel> get visible => data.where((d) => d.isVisible).toList();
}

@freezed
abstract class TncItemModel with _$TncItemModel {
  const TncItemModel._();

  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TncItemModel({
    @Default(0) int id,
    @Default(0) int storeId,

    /// `TOU` terms of use, `PPO` privacy policy, `RFP` refund policy.
    @Default("") String sitenavLinkTypeId,
    @Default("") String title,

    /// HTML.
    @Default("") String description,
    @Default(true) bool published,

    /// `A` = active.
    @Default("A") String status,
  }) = _TncItemModel;

  factory TncItemModel.fromJson(Map<String, dynamic> json) =>
      _$TncItemModelFromJson(json);

  bool get isVisible =>
      published && status == "A" && description.trim().isNotEmpty;
}
