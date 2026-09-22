part of 'drawer_widgets.dart';

class DrawerVersionx extends StatelessWidget {
  final Decoration? decoration;

  const DrawerVersionx({Key? key, this.decoration}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: decoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Powered By. Olsera',
            style: AppTextStyles.subtitle.copyWith(
              fontSize: 12,
              color: AppColors.primary,
            ),
            textAlign: TextAlign.center,
          ),

          ///
          FutureBuilder<PackageInfo>(
            future: PackageInfo.fromPlatform(),
            builder: (context, snapshot) {
              final splitted = snapshot.data?.version.split('.');
              PrintHelper.printWarning(splitted.toString());
              // final parsed = int.tryParse(splitted![2]) ?? 0;

              return Text(
                "Version : ${snapshot.data?.version}",
                // "Version : ${snapshot.data?.version}+${snapshot.data?.buildNumber}",
                style: AppTextStyles.captionSmall,
                textAlign: TextAlign.center,
              );
            },
          ),
        ],
      ),
    );
  }
}
