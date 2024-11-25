part of '../../index.dart';

OutlineInputBorder buildInputBorder([final Color? color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
      color: color ?? Colors.grey,
    ),
  );
}
