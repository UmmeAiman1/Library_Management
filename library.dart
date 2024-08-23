import 'dart:io';

import 'books.dart';

class Library {
  List<Books> books = [
    Books('Atomic Habits', 'James Clear'),
    Books('Think Faster, Talk Smarter', 'Matt Abrahams'),
    Books('Peer e Kamil', 'Umera Ahmed'),
    Books('Jannat kay Pattay', 'Nemrah Ahmed'),
    Books('Namal', 'Nemrah Ahmed'),
    Books('Mushaf', 'Nemrah Ahmed'),
    Books('Amarbail', 'Umerah Ahmed'),
  ];

  void DisplayBooks() {
    print('\n---------Available Books-------');
    for (int i = 0; i < books.length; i++) {
      if (!books[i].isIssued) {
        print('${i + 1},  ${books[i].booktitle} by ${books[i].author}');
      }
    }
  }

  void IssueBook() {
    DisplayBooks();
    stdout.write('\nEnter the book number to issue: ');
    int? bookNumber = int.parse(stdin.readLineSync()!);
    if (bookNumber > 0 && bookNumber <= books.length) {
      if (!books[bookNumber - 1].isIssued) {
        books[bookNumber - 1].isIssued = true;
        print(
            '${books[bookNumber - 1].booktitle} by ${books[bookNumber - 1].author} has been issued');
      } else {
        print('\nSorry!This Books is already issued');
      }
    } else {
      print('\nPlease enter a valid Book Number');
    }
  }

  void returnBook() {
    DisplayBooks();
    stdout.write('\nEnter the book number to return the book: ');
    int? returnbook = int.parse(stdin.readLineSync()!);
    if (returnbook > 0 && returnbook <= books.length) {
      if (!books[returnbook - 1].isIssued) {
        books[returnbook - 1].isIssued = false;
        print(
            'You have returned the book ${books[returnbook - 1].booktitle} by ${books[returnbook - 1].author}');
      } else {
        print('\nThis book is not issued');
      }
    } else {
      print('\nPlease enter a valid Book Number');
    }
  }

  void addBook() {
    stdout.write('\nEnter the book title:');
    String bookTitle = stdin.readLineSync()!;
    stdout.write('\nEnter the name of the author: ');
    String authorName = stdin.readLineSync()!;
    books.add(Books(bookTitle, authorName));
    print('Book $bookTitle by $authorName has been added');
  }

  void removeBook() {
    DisplayBooks();
    stdout.write('\nEnter the number of the book to remove: ');
    int? removedBook = int.parse(stdin.readLineSync()!);
    if (removedBook > 0 && removedBook <= books.length) {
      print(
          'Book ${books[removedBook - 1].booktitle} by ${books[removedBook - 1].author} has been removed');
      books.removeAt(removedBook - 1);
    } else {
      print('\nEnter a valid book number');
    }
  }
}
