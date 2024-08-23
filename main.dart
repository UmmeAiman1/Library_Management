import 'dart:io';

import 'library.dart';

void main() {
  Library library = Library();
  bool exit = false;

  while (!exit) {
    print('----------Welcome To The Worlds Of Books-------------');
    print('1. Display Books');
    print('2. Issue A Book');
    print('3. Return A Book');
    print('4. Add A Book');
    print('5. Remove a Book');
    print('6. exit');

    stdout.write('\nChoose an Option: ');
    int choose = int.parse(stdin.readLineSync()!);

    switch (choose) {
      case 1:
        library.DisplayBooks();
        break;
      case 2:
        library.IssueBook();
        break;
      case 3:
        library.returnBook();
        break;
      case 4:
        library.addBook();
        break;
      case 5:
        library.removeBook();
        break;
      case 6:
        exit = true;
        print('\nThankYou for visiting The World Of Books');
        break;
    }
    if (!exit) {
      stdout.write("\nPress Enter to return to the menu...");
      stdin.readLineSync();
    }
  }
}
