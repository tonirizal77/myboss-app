part of 'widgets.dart';

class CardStores extends StatelessWidget {
  final StoreList data;

  const CardStores({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
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
                imageUrl: data.image ?? "",
                height: 312,
                width: double.infinity,
              ),

              Align(
                alignment: .bottomRight,
                child: ButtonDirectionStores(
                  onTap: () => OpenLinksHelper.openLinks(
                    context,
                    link: data.googleMapLink ?? "",
                  ),
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
                Text(data.name ?? "", style: AppTextStyles.subtitle),
                Text(
                  data.address ?? "",
                  style: AppTextStyles.caption.copyWith(
                    color: AppTheme.onSurface(context),
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  LocaleKeys.stores_phone.tr(args: [data.phone ?? '-']),
                  style: AppTextStyles.caption.copyWith(
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
