part of '../datas.dart';

/// 2.a [Data source] for the Promo tab.
abstract class PromoSource {
  ResultFuture<PromoContent> getPromo();
}

/// 2.b Static content following the Figma `promotions` frames.
///
/// TODO(backend): replace with remote sources for point rewards and member
/// vouchers (the hayo `voucherList` endpoint may be the base for vouchers,
/// see docs/prd/PRD-003).
class PromoStatic implements PromoSource {
  const PromoStatic();

  static const _p = 'assets/images/products';
  static const _images = [
    '$_p/audio_01.png',
    '$_p/product_06.png',
    '$_p/product_07.png',
    '$_p/product_08.png',
  ];

  static const _rewards = [
    ('SpaceBuds 2', 100),
    ('GalaxyGems 3', 150),
    ('AstroPals 1', 200),
    ('NebulaNinjas 4', 250),
    ('StarVoyagers 5', 300),
    ('PlanetProtectors 6', 350),
    ('CometCrafters 7', 400),
    ('MeteorMates 8', 450),
  ];

  static const _terms = [
    'Berlaku untuk pembelian minimal Rp 100.000.',
    'Tunjukkan kode voucher ke kasir sebelum pembayaran.',
    'Tidak dapat digabung dengan promo lain.',
    'Satu voucher untuk satu transaksi.',
  ];

  @override
  ResultFuture<PromoContent> getPromo() async {
    return Right(
      PromoContent(
        rewards: [
          for (var i = 0; i < _rewards.length; i++)
            RewardPreview(
              name: _rewards[i].$1,
              points: _rewards[i].$2,
              image: _images[i % _images.length],
            ),
        ],
        vouchers: [
          for (var i = 0; i < 15; i++)
            Voucher(
              id: 'voucher-$i',
              title: 'Promo 12.12',
              discount: 'Diskon 50%',
              validUntil: 'Hingga 31 Des 2026',
              code: 'ABC1212',
              terms: _terms,
            ),
        ],
      ),
    );
  }
}
