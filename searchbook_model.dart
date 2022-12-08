class SearchBookModel {
  String title, author, image, year, description;
  int color;

  SearchBookModel(this.title, this.author, this.year, this.image, this.color,
   this.description);
}

List<SearchBookModel> search = searchBookData
  .map((item) => SearchBookModel(item['title'] as String, item['author']as String, item['year']as String, item['image']as String, item['color'] as int, item['description']as String)) 
  .toList();
  
var searchBookData = [
  
{
    "title": "Data Analysis for Network Cyber-security",
    "author": "Niall Adams & Nicholas Heard",
    "year": " 2014",
    "image": "assets/images/img_searchbook1.jpg",
    "color": 0x99CDCD,
    "description":
          "There is increasing pressure to protect computer networks against unauthorized intrusion, and some work in this area is concerned with engineering systems that are robust to attack. However, no system can be made invulnerable. Data Analysis for Network Cyber-Security focuses on monitoring and analyzing network traffic data, with the intention of preventing, or quickly identifying, malicious activity.Such work involves the intersection of statistics, data mining and computer science. Fundamentally, network traffic is relational, embodying a link between devices. As such, graph analysis approaches are a natural candidate. However, such methods do not scale well to the demands of real problems, and the critical aspect of the timing of communications events is not accounted for in these approaches.This book gathers papers from leading researchers to provide both background to the problems and a description of cutting-edge methodology. The contributors are from diverse institutions and areas of expertise and were brought together at a workshop held at the University of Bristol in March 2013 to address the issues of network cyber security. The workshop was supported by the Heilbronn Institute for Mathematical Research."
},

{
    "title": "Cyber security and IT infrastructure protection",
    "author": "John R. Vacca",
    "year": " 2014",
    "image": "assets/images/img_searchbook2.jpg",
    "color": 0x99CDCD,
    "description":
          "This book serves as a security practitioner’s guide to today’s most crucial issues in cyber security and IT infrastructure. It offers in-depth coverage of theory, technology, and practice as they relate to established technologies as well as recent advancements. It explores practical solutions to a wide range of cyber-physical and IT infrastructure protection issues. Composed of 11 chapters contributed by leading experts in their fields, this highly useful book covers disaster recovery, biometrics, homeland security, cyber warfare, cyber security, national infrastructure security, access controls, vulnerability assessments and audits, cryptography, and operational and organizational security, as well as an extensive glossary of security terms and acronyms. Written with instructors and students in mind, this book includes methods of analysis and problem-solving techniques through hands-on exercises and worked examples as well as questions and answers and the ability to implement practical solutions through real-life case studies. For example, the new format includes the following pedagogical elements: • Checklists throughout each chapter to gauge understanding • Chapter Review Questions/Exercises and Case Studies • Ancillaries: Solutions Manual; slide package; figure files This format will be attractive to universities and career schools as well as federal and state agencies, corporate security training programs, ASIS certification, etc."


},
{
    "title": "Cyber security",
    "author": "Paul T. Augastine",
    "year": " 2007",
    "image": "assets/images/img_searchbook3.jpg",
    "color": 0x99CDCD,
    "description":
          "Book Summary of Cyber Security With the growth of internet, attacks on computer networks have caused economic losses and created risks for national and international infrastructure security. Losses are estimated in the billions of dollars. Attacks have been directed against both commercial and government infrastructure systems. In addition, criminals around the world are increasingly using computers to commit traditional crimes, such as financial fraud, distribution of child pornography and copyright privacy."

},
{
    "title": "Cyber security : economic strategies and public policy alternatives",
    "author": "Michael P. Gallaher, Albert N. Link, Brent Rowe",
    "year": " 2008",
    "image": "assets/images/img_searchbook4.webp",
    "color": 0x99CDCD,
    "description":
          "Cyberspace is the nervous system of today's advanced economies, linking critical infrastructures across public and private institutions. The authors of this book comprehensively explore the many issues surrounding this unique system, including private sector cyber security investment decisions and implementation strategies, public policy efforts to ensure overall security, and government's role in the process. The authors draw primarily on case-based information and focused survey data to describe and critique the economic strategies and broad technical approaches that private sector organizations adopt to secure their information technology infrastructure. Based on an analysis of these strategies, they propose several public policy responses that go beyond those that have come from recent policy reports. These responses include the construction of a national database of reliable and cost-effective information suitable for benchmarking, and public research and development support for innovations and infrastructures. The authors discuss the goal of such efforts: to shift private investments toward more socially-optimal proactive levels and to develop standards and protocols to ensure a more effective use of cyber security technologies. The first systematic analysis of the economics of cyber security, this insightful book will be of great interest to private and public sector managers and strategists involved in cyber security, as well as academics and researchers in the fields of economics, management, information systems, systems engineering, political science, and public policy."
},

{
    "title": "Cyber Security [electronic resource] : Deterrence and IT Protection for Critical Infrastructures",
    "author": "Maurizio Martellini",
    "year": " 2012",
    "image": "assets/images/img_searchbook5.jpg",
    "color": 0x99CDCD,
    "description":
          "The experts of the International Working Group-Landau Network Centro Volta (IWG-LNCV) discuss aspects of cyber security and present possible methods of deterrence, defense and resilience against cyber attacks. This SpringerBrief covers state-of-the-art documentation on the deterrence power of cyber attacks and argues that nations are entering a new cyber arms race. The brief also provides a technical analysis of possible cyber attacks towards critical infrastructures in the chemical industry and chemical safety industry. The authors also propose modern analyses and a holistic approach to resilience and security of Industrial Control Systems. The combination of contextual overview and future directions in the field makes this brief a useful resource for researchers and professionals studying systems security, data security and data structures. Advanced-level students interested in data security will also find this brief a helpful guide to recent research"
}

];

