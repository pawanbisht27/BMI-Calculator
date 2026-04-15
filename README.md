Flutter BMI Calculator App

A beautifully designed Body Mass Index (BMI) Calculator built with Flutter, allowing users to check their BMI instantly and get categorized health feedback with a visually appealing gradient interface


Overview :

This app helps users calculate their BMI (Body Mass Index) based on their height (in feet and inches) and weight (in kilograms).
The app dynamically displays results with custom messages and background color changes to indicate the user’s health category — Underweight, Healthy, or Overweight.

 Features

- Accurate BMI Calculation using metric conversion (feet & inches → meters)
- Instant feedback with health status messages
- Gradient background UI with color-changing feedback
- Lightweight & responsive – runs smoothly on Android and iOS
- Input validation – ensures all fields are filled before calculation


BMI Formula

BMI = weight (kg) / (height (m) * height (m))

Category| BMI Range| Color Indicator
Underweight| < 18| Red
Normal| 18 – 25| Green
Overweight| > 25| orange


Tech Stack 

- Flutter (Dart)
- Material Design Components
- Stateful Widgets for interactivity
- LinearGradient for background styling


Installation & Setup

Follow these steps to set up the project locally:

# Clone the repository
git clone https://github.com/pawanbisht27/flutter_bmi_calculator.git

# Navigate into the project folder
cd flutter_bmi_calculator

# Get dependencies
flutter pub get

# Run the app
flutter run


Future Improvements

- Add BMI history tracking
- Include gender-based suggestions
- Integrate data persistence (Hive / SharedPreferences)
- Animated result transitions for better UX


Author

Pawan Bisht
pawangbisht@gmail.com
"GitHub Profile" (https://github.com/pawanbisht27)

---

If you found this project helpful, consider giving it a star on GitHub!


