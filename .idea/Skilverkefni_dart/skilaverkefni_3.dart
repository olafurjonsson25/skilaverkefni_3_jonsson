import 'dart:io';

void main() {
  List<String> groceryList = [];
  while (true) {
    print('\nGrocery List Menu:');
    print('1. Add an item to the list');
    print('2. View the list');
    print('3. End the program');

    stdout.write('Enter your choice (1/2/3): ');
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      stdout.write('Enter the item name: ');
      String? item = stdin.readLineSync();
      if (item != null) {
        addItemToList(groceryList, item);
        print('$item has been added to the list.');
      }
    } else if (choice == '2') {
      viewList(groceryList);
    } else if (choice == '3') {
      print('Exiting the program.');
      break;
    } else {
      print('Invalid choice. Please enter 1, 2, or 3.');
    }
  }
}
void addItemToList(List<String> list, String item) {
  list.add(item);
}
void viewList(List<String> list) {
  if (list.isEmpty) {
    print('The list is empty.');
  } else {
    print('\nGrocery List:');
    for (int i = 0; i < list.length; i++) {
      print('${i + 1}. ${list[i]}');
    }
  }
}