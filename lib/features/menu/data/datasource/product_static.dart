part of '../datas.dart';

/// 2.a [Data source] for the product catalog.
abstract class ProductSource {
  ResultFuture<ProductCatalog> getCatalog();
}

/// 2.b Static catalog following the Figma `catalogs` / `product details`
/// frames.
///
/// TODO(backend): replace with a remote source once the MyBoss API exposes
/// products, categories, brands and specs (see docs/prd/PRD-003). Images
/// reuse the few product assets in the repo until real ones are exported.
class ProductStatic implements ProductSource {
  const ProductStatic();

  static const _p = 'assets/images/products';
  static const categories = [
    ProductCategory(id: 'wearable', name: 'Wearable'),
    ProductCategory(id: 'audio', name: 'Audio'),
    ProductCategory(id: 'power', name: 'Power'),
    // TODO(backend): no products / images for these yet, so they show
    // "Product not found" when selected and no section under "All".
    ProductCategory(id: 'personal_care', name: 'Personal Care'),
    ProductCategory(id: 'home_appliance', name: 'Home Appliance'),
    ProductCategory(id: 'gaming', name: 'Gaming'),
  ];

  static const brands = [
    'Oraimo',
    'Anker',
    'Oppo',
    'Ugreen',
    'Vivan',
    'Realme',
  ];

  /// (name, picture). Pictures cut from the Figma catalog frames.
  static const _wearables = [
    ('oraimo Watch Pro 2', '$_p/watch_01.png'),
    ('Watch Nova 2', '$_p/watch_02.png'),
    ('Watch Nova AM', '$_p/watch_03.png'),
    ('Watch Mate 2', '$_p/watch_04.png'),
    ('Watch 7', '$_p/watch_05.png'),
    ('Watch 6 Max', '$_p/watch_06.png'),
    ('oraimo Watch Muse', '$_p/watch_07.png'),
    ('Watch Nova 2 Lite', '$_p/watch_08.png'),
    ('Watch 6 Lite', '$_p/watch_09.png'),
    ('Watch Nova Pro', '$_p/watch_02.png'),
    ('Watch 5', '$_p/watch_05.png'),
    ('Watch ES', '$_p/watch_08.png'),
  ];

  /// Figma reuses watch names for audio; names here follow the pictures.
  static const _audios = [
    ('SpaceBuds 2', '$_p/audio_01.png'),
    ('BoomPop Speaker', '$_p/audio_02.png'),
    ('FreePods Neo', '$_p/audio_03.png'),
    ('OpenCirclet', '$_p/audio_04.png'),
    ('FreePods 4', '$_p/audio_05.png'),
    ('SpaceBox Mini', '$_p/audio_06.png'),
    ('BoomPop 2', '$_p/audio_07.png'),
    ('SoundGo Mic', '$_p/audio_08.png'),
    ('StrideFlex Headphones', '$_p/audio_09.png'),
    ('Halo Earphones', '$_p/product_07.png'),
  ];

  static const _powers = [
    ('PowerPro 20W Charger', '$_p/product_01.png'),
    ('PowerBox 10000', '$_p/product_05.png'),
    ('Toughlink C to C', '$_p/product_08.png'),
    ('PowerJet 65W', '$_p/product_01.png'),
    ('Traveler 4 Powerbank', '$_p/product_05.png'),
  ];

  /// Brand per position: mostly Oraimo, a few other brands so the brand
  /// chips have something to filter (Wearable has no Anker on purpose:
  /// that combination shows the empty state).
  static String _brand(String category, int i) => switch ((category, i % 6)) {
    ('wearable', 3) => 'Ugreen',
    ('wearable', 5) => 'Oppo',
    ('audio', 2) => 'Anker',
    ('audio', 4) => 'Realme',
    ('power', 1) => 'Anker',
    ('power', 3) => 'Ugreen',
    _ => 'Oraimo',
  };

  static const _audioSpecs = [
    ProductSpec(label: 'Model', value: 'OTW-631'),
    ProductSpec(label: 'Bluetooth Version', value: 'V6.0'),
    ProductSpec(label: 'Range', value: '10m'),
    ProductSpec(
      label: 'Playtime ANC OFF',
      value: 'Up to 11.5 hours per charge, 45 hours with the charging case',
    ),
    ProductSpec(
      label: 'Playtime ANC ON',
      value: 'Up to 9 hours per charge, 35 hours with the charging case',
    ),
    ProductSpec(label: 'Case Input', value: 'Type-C'),
  ];

  static const _watchSpecs = [
    ProductSpec(label: 'Model', value: 'OSW-810'),
    ProductSpec(label: 'Display', value: '2.01" AMOLED'),
    ProductSpec(label: 'Bluetooth Version', value: 'V5.3'),
    ProductSpec(label: 'Battery', value: 'Up to 10 days'),
    ProductSpec(label: 'Water Resistance', value: 'IP68'),
  ];

  static const _powerSpecs = [
    ProductSpec(label: 'Model', value: 'OCW-E65S'),
    ProductSpec(label: 'Output', value: 'USB-C PD 20W'),
    ProductSpec(label: 'Input', value: '100-240V ~ 50/60Hz'),
    ProductSpec(label: 'Protection', value: 'Over-current, over-heat'),
  ];

  static const _descriptions = {
    'wearable':
        'Track your health, sleep and workouts all day. A bright display, '
        'long battery life and Bluetooth calling keep you connected from '
        'your wrist.',
    'audio':
        'Clear sound with deep bass and active noise cancellation. Light, '
        'comfortable and ready for calls, music and games all day long.',
    'power':
        'Fast, safe charging for phones, tablets and accessories, with '
        'built-in protection against over-current and over-heating.',
  };

  static List<Product> _build(
    String category,
    List<(String, String)> items,
    List<ProductSpec> specs,
  ) {
    final ids = [for (var i = 0; i < items.length; i++) '$category-$i'];

    return [
      for (var i = 0; i < items.length; i++)
        Product(
          id: ids[i],
          name: items[i].$1,
          categoryId: category,
          brand: _brand(category, i),
          // Own picture first, then four from the same category (Figma
          // shows a 5-photo gallery).
          images: [
            for (var k = 0; k < 5; k++) items[(i + k) % items.length].$2,
          ],
          isNew: i < 2,
          description: _descriptions[category]!,
          specs: specs,
          relatedIds: [for (var k = 1; k <= 6; k++) ids[(i + k) % ids.length]],
        ),
    ];
  }

  @override
  ResultFuture<ProductCatalog> getCatalog() async {
    return Right(
      ProductCatalog(
        categories: categories,
        brands: brands,
        products: [
          ..._build('wearable', _wearables, _watchSpecs),
          ..._build('audio', _audios, _audioSpecs),
          ..._build('power', _powers, _powerSpecs),
        ],
      ),
    );
  }
}
