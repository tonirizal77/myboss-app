import '../promo_model/promo_model.dart';
import 'promo.dart';

extension PromoPointX on PromoPoint {
  RewardPreview toReward() => RewardPreview(
    name: name,
    points: redeemedPoints,
    image: photo ?? '',
    productId: productId == null ? '' : '$productId',
  );
}

extension PromoVoucherX on PromoVoucher {
  Voucher toVoucher() => Voucher(
    id: '$id',
    title: title,
    discount: discountLabel,
    validUntil: DateTime.tryParse(expiryDate ?? ''),
    code: code ?? '',
    terms: Voucher.cleanTerms(tnc),
    usedAt: isUsed ? DateTime.tryParse(usedDate ?? '') : null,
  );
}
