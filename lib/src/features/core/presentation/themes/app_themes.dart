import '../../infrastructure/common_import.dart';

class AppThemes {
  static TextTheme lightTextTheme = TextTheme(
    bodyLarge: GoogleFonts.robotoSlab(
      color: AppColors.blackColor,
      fontWeight: FontWeight.w500,
      fontSize: 14,
    ),
    bodyMedium: GoogleFonts.robotoSlab(
      color: AppColors.greyDark,
      fontWeight: FontWeight.w500,
      fontSize: 14,
    ),
    displayLarge: GoogleFonts.robotoSlab(
      color: AppColors.blackColor,
      fontSize: 32,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: GoogleFonts.robotoSlab(
      color: AppColors.blackColor,
      fontSize: 21,
      fontWeight: FontWeight.w700,
    ),
    displaySmall: GoogleFonts.robotoSlab(
      color: AppColors.blackColor,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    headlineLarge: GoogleFonts.robotoSlab(
      color: AppColors.whiteColor,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    headlineMedium: GoogleFonts.robotoSlab(
      color: AppColors.greyDark,
      fontWeight: FontWeight.w600,
      fontSize: 14,
    ),
    titleLarge: GoogleFonts.robotoSlab(
      color: AppColors.greyDark,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
  );

  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      cardColor: AppColors.whiteColor,
      scaffoldBackgroundColor: AppColors.whiteColor,
      primaryColor: AppColors.primaryColor,
      canvasColor: AppColors.whiteColor,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.whiteColor,
      ),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateColor.resolveWith(
          (states) => AppColors.whiteColor,
        ),
        fillColor: MaterialStateColor.resolveWith(
          (states) => AppColors.primaryColor,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: AppColors.primaryColor,
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.whiteColor,
          textStyle: GoogleFonts.robotoSlab(
            color: AppColors.whiteColor,
            fontSize: 15.5,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 18,
          ),
          minimumSize: const Size.fromHeight(0),
          elevation: 0,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: AppColors.primaryColor,
          side: const BorderSide(
            width: 2,
            color: AppColors.primaryColor,
          ),
          textStyle: GoogleFonts.robotoSlab(
            color: AppColors.primaryColor,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 18,
          ),
          minimumSize: const Size.fromHeight(0),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.transparent,
          foregroundColor: AppColors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          textStyle: GoogleFonts.robotoSlab(
            color: AppColors.primaryColor,
            fontSize: 15.5,
            fontWeight: FontWeight.w600,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 18,
          ),
          minimumSize: const Size.fromHeight(0),
        ),
      ),
      dialogTheme: DialogTheme(
        backgroundColor: AppColors.whiteColor,
        titleTextStyle: GoogleFonts.robotoSlab(
          color: AppColors.primaryColor,
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
        contentTextStyle: GoogleFonts.robotoSlab(
          color: AppColors.primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: Colors.grey.shade200,
        space: .6,
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 18,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          gapPadding: 12,
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          gapPadding: 12,
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.transparent,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          gapPadding: 12,
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.erroColor,
          ),
        ),
        errorStyle: GoogleFonts.robotoSlab(
          fontWeight: FontWeight.w600,
          letterSpacing: .2,
          fontSize: 12,
        ),
        fillColor: const Color(0xFFFAFAFA),
        filled: true,
        iconColor: const Color(0xFF9E9E9E),
        hintStyle: GoogleFonts.robotoSlab(
          color: const Color(0xFF9E9E9E),
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: AppColors.secondaryColor,
        primary: AppColors.primaryColor,
      ),
      textTheme: lightTextTheme,
    );
  }
}
