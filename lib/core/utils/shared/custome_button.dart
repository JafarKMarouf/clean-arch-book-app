part of '../../index.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.backgroundColor,
    this.textStyle,
    this.borderRadius,
  });
  final void Function()? onPressed;
  final String title;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
          backgroundColor: backgroundColor ?? Colors.white,
        ),
        child: Text(
          title,
          style: textStyle ??
              AppStyles.styleBold18(context).copyWith(
                color: Colors.black,
              ),
        ),
      ),
    );
  }
}
