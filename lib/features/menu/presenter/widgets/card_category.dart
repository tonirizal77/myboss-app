part of 'widgets.dart';

class CardCategory extends StatelessWidget {
  final ProductsModel data;
  final bool isSelected;
  final void Function() onTap;

  const CardCategory({
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
        width: 94,
        height: 130,
        padding: EdgeInsets.fromLTRB(8, 8, 8, 4),
        decoration: isSelected ? _decoration(context) : null,
        child: Column(
          mainAxisAlignment: .spaceBetween,
          spacing: 4,
          children: [
            ImageNetwork(
              imageUrl: data.photoMd,
              width: 62,
              height: 62,
              boxFit: BoxFit.cover,
            ),

            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  data.name.capitalize(),
                  // "Berry Boba Pops Cream",
                  style: AppTextStyles.subtitleSmall.copyWith(
                    color: AppTheme.onSurface(context),
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _decoration(BuildContext context) {
    return BoxDecoration(
      color: AppTheme.primaryContainer(context),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      border: BoxBorder.fromLTRB(
        top: BorderSide(color: AppColors.primary),
        right: BorderSide(color: AppColors.primary),
        left: BorderSide(color: AppColors.primary),
      ),
    );
  }
}
