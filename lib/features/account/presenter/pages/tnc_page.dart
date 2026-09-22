part of 'pages.dart';

class TncPage extends StatelessWidget {
  const TncPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DataMap> _dataTnc = [
      {
        'title': LocaleKeys.tnc_1_title.tr(),
        'body': [
          {'no': 1, 'ket': LocaleKeys.tnc_1_desc_1.tr()},
          {'no': 2, 'ket': LocaleKeys.tnc_1_desc_2.tr()},
          {'no': 3, 'ket': LocaleKeys.tnc_1_desc_3.tr()},
        ],
      },
      {
        'title': LocaleKeys.tnc_2_title.tr(),
        'body': [
          {'no': 1, 'ket': LocaleKeys.tnc_2_desc_1.tr()},
          {'no': 2, 'ket': LocaleKeys.tnc_2_desc_2.tr()},
          {'no': 3, 'ket': LocaleKeys.tnc_2_desc_3.tr()},
          {'no': 4, 'ket': LocaleKeys.tnc_2_desc_4.tr()},
          {'no': 5, 'ket': LocaleKeys.tnc_2_desc_5.tr()},
          {'no': 6, 'ket': LocaleKeys.tnc_2_desc_6.tr()},
        ],
      },
      {
        'title': LocaleKeys.tnc_3_title.tr(),
        'body': [
          {'no': 1, 'ket': LocaleKeys.tnc_3_desc_1.tr()},
          {'no': 2, 'ket': LocaleKeys.tnc_3_desc_2.tr()},
          {'no': 3, 'ket': LocaleKeys.tnc_3_desc_3.tr()},
          {'no': 4, 'ket': LocaleKeys.tnc_3_desc_4.tr()},
          {'no': 5, 'ket': LocaleKeys.tnc_3_desc_5.tr()},
          {'no': 6, 'ket': LocaleKeys.tnc_3_desc_6.tr()},
        ],
      },
      {
        'title': LocaleKeys.tnc_4_title.tr(),
        'body': [
          {'no': 1, 'ket': LocaleKeys.tnc_4_desc_1.tr()},
          {'no': 2, 'ket': LocaleKeys.tnc_4_desc_2.tr()},
          {'no': 3, 'ket': LocaleKeys.tnc_4_desc_3.tr()},
          {'no': 4, 'ket': LocaleKeys.tnc_4_desc_4.tr()},
          {'no': 5, 'ket': LocaleKeys.tnc_4_desc_5.tr()},
        ],
      },
      {
        'title': LocaleKeys.tnc_5_title.tr(),
        'body': [
          {'no': 1, 'ket': LocaleKeys.tnc_5_desc_1.tr()},
          {'no': 2, 'ket': LocaleKeys.tnc_5_desc_2.tr()},
          {'no': 3, 'ket': LocaleKeys.tnc_5_desc_3.tr()},
          {'no': 4, 'ket': LocaleKeys.tnc_5_desc_4.tr()},
        ],
      },
      {
        'title': LocaleKeys.tnc_6_title.tr(),
        'body': [
          {'no': 1, 'ket': LocaleKeys.tnc_6_desc_1.tr()},
          {'no': 2, 'ket': LocaleKeys.tnc_6_desc_2.tr()},
          {'no': 3, 'ket': LocaleKeys.tnc_6_desc_3.tr()},
        ],
      },
      {
        'title': LocaleKeys.tnc_7_title.tr(),
        'body': [
          {'no': 1, 'ket': LocaleKeys.tnc_7_desc_1.tr()},
          {'no': 2, 'ket': LocaleKeys.tnc_7_desc_2.tr()},
          {'no': 3, 'ket': LocaleKeys.tnc_7_desc_3.tr()},
        ],
      },
      {
        'title': LocaleKeys.tnc_8_title.tr(),
        'body': [
          {'no': 1, 'ket': LocaleKeys.tnc_8_desc_1.tr()},
          {'no': 2, 'ket': LocaleKeys.tnc_8_desc_2.tr()},
          {'no': 3, 'ket': LocaleKeys.tnc_8_desc_3.tr()},
        ],
      },
      {
        'title': LocaleKeys.tnc_9_title.tr(),
        'body': [
          {'no': 1, 'ket': LocaleKeys.tnc_9_desc_1.tr()},
          {'no': 2, 'ket': LocaleKeys.tnc_9_desc_2.tr()},
          {'no': 3, 'ket': LocaleKeys.tnc_9_desc_3.tr()},
          {'no': 4, 'ket': LocaleKeys.tnc_9_desc_4.tr()},
        ],
      },
      {
        'title': LocaleKeys.tnc_10_title.tr(),
        'body': [
          {'no': 1, 'ket': LocaleKeys.tnc_10_desc_1.tr()},
          {'no': 2, 'ket': LocaleKeys.tnc_10_desc_2.tr()},
        ],
      },
      {
        'title': LocaleKeys.tnc_11_title.tr(),
        'body': [
          {'no': 1, 'ket': LocaleKeys.tnc_11_desc_1.tr()},
          {'no': 2, 'ket': LocaleKeys.tnc_11_desc_2.tr()},
          {'no': 3, 'ket': LocaleKeys.tnc_11_desc_3.tr()},
          {'no': 4, 'ket': LocaleKeys.tnc_11_desc_4.tr()},
          {'no': 5, 'ket': LocaleKeys.tnc_11_desc_5.tr()},
          {'no': 6, 'ket': LocaleKeys.tnc_11_desc_6.tr()},
        ],
      },
      {
        'title': LocaleKeys.tnc_12_title.tr(),
        'body': LocaleKeys.tnc_12_desc.tr(),
      },
    ];

    return ResponsivePage(
      useSafeArea: true,
      appBar: AppBarCustom(
        isBlur: false,
        // title: "Syarat & Ketentuan",
        title: LocaleKeys.tnc_title.tr(),
        onClose: () => context.pop(),
      ),
      useScrollView: true,
      padding: EdgeInsets.all(16),
      body: Container(
        alignment: Alignment.topLeft,
        // color: Colors.amber,
        margin: EdgeInsets.only(bottom: 50),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(LocaleKeys.tnc_desc.tr()),

            const SizedBox(height: 16),

            Column(
              crossAxisAlignment: .start,
              spacing: 24,
              children: List.generate(_dataTnc.length, (i) {
                final _data = _dataTnc[i];

                final _title = _data['title'] as String;
                final _body = (_data['body'] is List)
                    ? _data['body'] as List
                    : _data['body'];

                return Column(
                  crossAxisAlignment: .start,
                  mainAxisSize: .min,
                  spacing: 8,
                  children: [
                    ///
                    Text(
                      "$_title",
                      style: AppTextStyles.subtitleBig2.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    /// Rincian
                    /// -
                    _body is List
                        ? _detailTnc(_body)
                        : Text(
                            "${_body}",
                            style: AppTextStyles.body,
                            textAlign: TextAlign.start,
                          ),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  Column _detailTnc(List<dynamic> _body) {
    return Column(
      crossAxisAlignment: .start,
      children: List.generate(_body.length, (i) {
        return Row(
          crossAxisAlignment: .start,
          mainAxisAlignment: .start,
          spacing: 8,
          children: [
            Container(
              width: 30,
              alignment: Alignment.topRight,
              child: Text(
                "${_body[i]['no'].toString()}.",
                style: AppTextStyles.body,
                textAlign: TextAlign.end,
              ),
            ),
            Flexible(
              child: Text(
                _body[i]['ket'].trim(),
                style: AppTextStyles.body,
                textAlign: TextAlign.start,
              ),
            ),
          ],
        );
      }),
    );
  }
}
