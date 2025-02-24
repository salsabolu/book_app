class Book {
  String name;
  String image;
  String description;
  double rate;
  int page;
  String categoryBook;
  String language;

  Book({
    required this.name,
    required this.image,
    required this.description,
    required this.rate,
    required this.page,
    required this.categoryBook,
    required this.language,
  });
}

List<Book> listBook = [
  Book(
    name: "Redhat",
    image: "images/buku-redhat.png",
    description: "Ini adalah buku RedHat",
    rate: 4.2,
    page: 80,
    categoryBook: "Sistem Operasi",
    language: "Indonesia",
  ),
  Book(
    name: "Docker",
    image: "images/buku-docker.png",
    description: "Ini adalah buku tentang Docker",
    rate: 4.8,
    page: 102,
    categoryBook: "DevOps",
    language: "Indonesia",
  ),
  Book(
    name: "VPN",
    image: "images/buku-vpn.png",
    description: "Ini adalah buku mempelajari tentang VPN",
    rate: 4.2,
    page: 64,
    categoryBook: "Cybersecurity",
    language: "English",
  ),
];