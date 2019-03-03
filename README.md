# grb -- Greek Bible on the Command Line

A command line tool for search and reading the Bible in Greek.
The Old Testament is the Septuagint (containing some differing texts), and the New Testament is the [SBL Greek New Testament](http://sblgnt.com/download/).

Format and original implementation from [bontibon/kjv](https://github.com/bontibon/kjv). Meant to be a companion program.

## Usage

    usage: ./grb [flags] [reference...]

      -l      list books
      -W      no line wrap
      -h      show help

      Reference types:
          <Book>
              Individual book
          <Book>:<Chapter>
              Individual chapter of a book
          <Book>:<Chapter>:<Verse>[,<Verse>]...
              Individual verse(s) of a specific chapter of a book
          <Book>:<Chapter>-<Chapter>
              Range of chapters in a book
          <Book>:<Chapter>:<Verse>-<Verse>
              Range of verses in a book chapter
          <Book>:<Chapter>:<Verse>-<Chapter>:<Verse>
              Range of chapters and verses in a book

          /<Search>
              All verses that match a pattern
          <Book>/<Search>
              All verses in a book that match a pattern
          <Book>:<Chapter>/<Search>
              All verses in a chapter of a book that match a pattern

## Notes and Contents

- I/II Samuel and I/II Kings are named with their English titles despite the fact that in Greek they are respectively I-IV Kings. This is simply because the interface is in English and is supposed to be consistent with `kjv`.
- Ezra and Nehemiah are "included", but are categorized as 2 Esdras as with the Septuagint. This is simply to prevent breaking up the book as it appears natively in the Septuagint, although I might add an entry for Ezra and Nehemiah as separate books later.
- Apochrophal and Deuterocanonical books included, including:
	- 1 Esdras
	- Judith
	- Tobit
	- I-IV Maccabees
	- Odes
	- Wisdom of Solomon
	- Psalmes of Solomon
	- Zephaniah (Sophonias)
	- Baruch
	- Letter of Jeremiah
	- Susanna
	- Bel and the Dragon
- Different editions of books from different texts:
	- Judges (Alexandrinus (default) & Vaticanus)
	- Tobit (Vaticanus/Alexandrinus (default) & Sinaiticus)
	- Daniel (Theodotion)
	- Susanna (Theodotion)
	- Bel and the Dragon (Theodotion)

## Install

Install `grb` by running:

```
git clone https://github.com/lukesmithxyz/grb.git
cd grb
sudo make install
```

## License

The script is in the public domain.
The SBL Greek New Testament translation/edition has a permissive license for non-commercial uses. See it [here](http://sblgnt.com/license/).
