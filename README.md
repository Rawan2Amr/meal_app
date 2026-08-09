Meals App

A Flutter recipe browsing app that lets users explore meals by category, view detailed recipe information, filter meals by dietary preference, and save their favorite recipes for quick access.

Features
Browse meals organized by category (e.g. Italian, Asian, German, French, Quick & Easy)
View detailed recipe info — ingredients, preparation steps, complexity, and affordability
Mark meals as favorites and access them from a dedicated Favorites screen
Filter meals by dietary preference (gluten-free, vegan, vegetarian, lactose-free)
Smooth image loading with fade-in placeholders
Clean, custom typography via Google Fonts
State managed with Riverpod for predictable, testable app behavior
Tech Stack
Category	Package(s)
Framework	Flutter (Dart SDK >=3.4.0-233.0.dev <4.0.0)
State management	flutter_riverpod, riverpod
Typography	google_fonts
Image loading	transparent_image (fade-in placeholder images)
Linting	flutter_lints
Testing	flutter_test
Project Structure
meal_app/
├── android/        # Android platform code
├── ios/            # iOS platform code
├── linux/          # Linux platform code
├── macos/          # macOS platform code
├── windows/        # Windows platform code
├── web/            # Web platform code
├── lib/            # Main Dart/Flutter application source
│   ├── data/           # Static meal & category data
│   ├── models/          # Data models (Meal, Category, etc.)
│   ├── providers/        # Riverpod providers (favorites, filters, meals)
│   ├── screens/          # App screens (categories, meal details, filters, favorites)
│   ├── widgets/          # Reusable UI components
│   └── main.dart         # App entry point
├── pubspec.yaml    # Project metadata and dependencies
└── analysis_options.yaml
