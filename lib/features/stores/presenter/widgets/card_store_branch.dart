part of 'widgets.dart';

class CardStoreBranch extends StatelessWidget {
  final StoreBranch data;

  const CardStoreBranch({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final mapsUrl = data.mapsUrl;

    return Container(
      color: AppTheme.surface(context),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          /// Image
          Stack(
            alignment: .bottomRight,
            children: [
              ImageNetwork(
                imageUrl: data.logoUrl ?? "",
                height: 312,
                width: double.infinity,
              ),

              if (mapsUrl != null)
                Align(
                  alignment: .bottomRight,
                  child: ButtonDirectionBranch(
                    onTap: () =>
                        OpenLinksHelper.openLinks(context, link: mapsUrl),
                  ),
                ),
            ],
          ),

          /// Content
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(data.name ?? "", style: MyBossTextStyles.subtitle),
                Text(
                  data.address ?? "",
                  style: MyBossTextStyles.caption.copyWith(
                    color: AppTheme.onSurface(context),
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  data.cityName ?? "",
                  style: MyBossTextStyles.caption.copyWith(
                    color: AppTheme.onSurface(context),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
