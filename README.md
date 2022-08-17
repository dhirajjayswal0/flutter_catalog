# BJS - Bangalore job search

A flutter project which takes json file for it's backend and shows users the list of jobs available 

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Personal HelpBook

# The non-nullable variable 'items' must be initialized. Try adding an initializer 

class CatalogModel {
//   static List<Item> items;
  static List<Item> items = <Item>[];
}
