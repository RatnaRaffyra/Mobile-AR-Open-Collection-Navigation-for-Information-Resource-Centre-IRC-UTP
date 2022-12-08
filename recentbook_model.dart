
class RecentBookModel {
  String title, author, image, year, description;
  int color;

  RecentBookModel(this.title, this.author, this.year, this.image, this.color,
      this.description);
}

List<RecentBookModel> recents = recentBookData
    .map((item) => RecentBookModel(item['title'] as String, item['author']as String, item['year']as String, item['image']as String, item['color'] as int, item['description']as String)) 
    .toList();

var recentBookData = [
  {
    "title": "Racism and Antiracism: Inequalities, Opportunities and Policies",
    "author": "Peter H Braham, Ali Rattansi, Richard Skellington",
    "year": " 1992",
    "image": "assets/images/img_recentbook4.jpg",
    "color": 0x99CDCD,
    "description" :
          "This key text explores the nature and extent of racial discrimination, and the successes and failures of equal opportunities programmes. A successful balance of important recent articles and substantial contributions specially written for the volume, it presents analyses of institutional racism in immigration law, housing, social work, employment training and the criminal justice system. The contributors explore changes over time and examine the interwoven strands of `race′, class and gender that form the pattern of disadvantage. They then discuss the formulation, implementation and outcomes of equal opportunities policies in the local state and the private sector, rigorously investigating both `liberal′ and `radical′ appro"
  },

  {
    "title": "Project Management: A Systems Approach to Planning, Scheduling, and Controlling (8th Edition)",
    "author": "Harold R. Kerzner",
    "year": " 2003",
    "image": "assets/images/img_recentbook3.png",
    "color": 0x99CDCD,
    "description" : 
          "Completely revised and streamlined for course use including expanded problems and exercises.Content has been refocused on the critical aspects of project management.Supplemented by instructors packages for both academic use and corporate trainers, includes online PowerPoint(r) presentations, student workbook, instructor's manual, and a new book of case studies."

  },

  {
    "title": "Artificial Intelligence in Wireless Communication",
    "author": "Charles W. Bostian, Thomas W. Rondeau",
    "year": " 2009",
    "image": "assets/images/img_recentbook1.png",
    "color": 0x99CDCD,
    "description": 
         "“This cutting-edge resource offers practical overview of cognitive radio, a paradigm for wireless communications in which a network or a wireless node changes its transmission or reception parameters. The alteration of parameters is based on the active monitoring of several factors in the external and internal radio environment. This book offers a detailed description of cognitive radio and its individual parts. Practitioners learn how the basic processing elements and their capabilities are implemented as modular components. Moreover, the book explains how each component can be developed and tested independently, before integration with the rest of the engine. Practitioners discover how cognitive radio uses artificial intelligence to achieve radio optimization. The book also provides an in-depth working example of the developed cognitive engine and an experimental scenario to help engineers understand its performance and behavior." 
  },
];