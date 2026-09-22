part of 'widgets.dart';

class CardProduct extends StatelessWidget {
  final ProductsModel data;
  final bool isSelected;
  final void Function() onTap;

  const CardProduct({
    super.key,
    required this.data,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 98,
        height: 138,
        padding: EdgeInsets.all(8),
        decoration: isSelected
            ? _decorationSelected(context)
            : _decorationDefault(context),
        child: Column(
          mainAxisAlignment: .center,
          mainAxisSize: .min,
          spacing: 8,
          children: [
            ImageNetwork(
              imageUrl: data.photoMd,
              width: 62,
              height: 62,
              boxFit: BoxFit.cover,
            ),
            // ImageAssets(
            //   image: data.photoMd,
            //   width: 62,
            //   height: 62,
            //   fit: BoxFit.cover,
            // ),

            //
            Flexible(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  data.name.capitalize(),
                  style: AppTextStyles.subtitleSmall.copyWith(
                    color: AppTheme.onSurface(context),
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _decorationDefault(BuildContext context) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppTheme.surface(context),
    );
  }

  BoxDecoration _decorationSelected(BuildContext context) {
    return BoxDecoration(
      color: AppTheme.primaryContainer(context),
      borderRadius: BorderRadius.circular(20),
      border: BoxBorder.all(color: AppColors.primary),
    );
  }
}
