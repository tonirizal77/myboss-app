part of '../widgets.dart';

class CardStampsWarning extends StatelessWidget {
  const CardStampsWarning({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 40,
          width: 40,
          child: Icon(
            Icons.warning_amber_rounded,
            color: AppColors.warning,
            size: 24, //
          ),
        ),
        Column(
          mainAxisSize: .min,
          crossAxisAlignment: .start,
          children: [
            Text(
              "1 stamp will expire soon",
              style: AppTextStyles.body.copyWith(
                color: AppTheme.error(context),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "5 days left on 1 March 2026",
              style: AppTextStyles.body.copyWith(
                color: AppTheme.error(context),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
