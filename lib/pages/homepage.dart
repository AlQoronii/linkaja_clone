import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<Homepage> {
  final PageController _pageController = PageController();
  final int _totalImages = 4;
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Baris ikon-ikon di bagian atas
            Container(
              margin: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Ikon pertama
                  SizedBox(height: 50),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Colors.grey,
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        'images/LinkAja.svg.png',
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 10,
                    ),
                  ), // Jarak antar ikon

                  // Ikon kedua
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Colors.white,
                      width: 50,
                      height: 50,
                      child: Icon(
                        CupertinoIcons.heart,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10), // Jarak antar ikon

                  // Ikon ketiga dengan Flip
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Colors.white,
                      width: 50,
                      height: 50,
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(3.14159), // Flip Image
                        child: Image.asset(
                          'images/live-chat.png',
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Container merah dengan informasi
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(255, 251, 51, 51),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Teks sapaan
                  Container(
                    margin: const EdgeInsets.fromLTRB(5, 10, 0, 10),
                    child: Text(
                      'Hi, MUHAMMAD FATHURROZAK AL QORONI',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Baris dengan dua kotak informasi
                  Row(
                    children: [
                      // Kotak Balance
                      Flexible(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5, 0, 0, 10),
                          width: 180,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    child: Text(
                                      'Your Balance',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 5, 0, 10),
                                    child: const Text(
                                      'RP 10.184',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 5, 10, 10),
                                    width: 20,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red,
                                    ),
                                    child: const Icon(
                                      CupertinoIcons.arrow_right,
                                      size: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10), // Jarak antar kotak

                      // Kotak Bonus Balance
                      Flexible(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5, 0, 0, 10),
                          width: 180,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    child: Text(
                                      'Bonus Balance',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                      margin: EdgeInsets.fromLTRB(0, 5, 3, 10),
                                      width: 20,
                                      height: 20,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.orange,
                                      ),
                                      child: const Text(
                                        'L',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      )),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 5, 0, 10),
                                    child: const Text(
                                      '0',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 5, 10, 10),
                                    width: 20,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red,
                                    ),
                                    child: const Icon(
                                      CupertinoIcons.arrow_right,
                                      size: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Kotak Putih di bawah dengan gambar dan teks baru
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly, // Menjaga jarak antar kolom
                children: [
                  // Konten sebelah kiri (gambar dan teks asli)
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                        child: Image.asset(
                          'images/topup.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Container(
                        child: Text(
                          'Top Up',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(width: 20),

                  // Konten kolom kedua
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                        child: Image.asset(
                          'images/cash-withdrawal.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Container(
                        child: Text(
                          'CashOut',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(width: 20),

                  // Konten kolom ketiga
                  Column(
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                          child: Image.asset(
                            'images/money.png',
                            width: 30,
                            height: 30,
                          )),
                      Container(
                        child: Text(
                          'SendMoney',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(width: 20),

                  // Kotak 2
                  Column(
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                          child: Icon(
                            CupertinoIcons.rectangle_grid_2x2,
                            color: Colors.black,
                            size: 30,
                          )),
                      Container(
                        child: Text(
                          'See All',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Baris ikon-ikon 1
            Container(
              margin: const EdgeInsets.fromLTRB(5, 20, 5, 20),
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Ikon dan teks sejajar di atas
                children: [
                  for (var item in baris1)
                    _buildIconColumn(item), // Memanfaatkan fungsi builder
                ],
              ),
            ),

            // Baris ikon 2
            Container(
              margin: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.9,
              // padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Sama seperti baris 1
                children: [
                  for (var item in baris2) _buildIconColumn(item),
                ],
              ),
            ),
            // Slider Gambar dengan PageView Looping
            Container(
              height: 200,
              margin: const EdgeInsets.all(15),
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index % _totalImages;
                  });

                  if (index == _totalImages) {
                    Future.delayed(const Duration(milliseconds: 200), () {
                      _pageController.jumpToPage(0);
                    });
                  }
                },
                itemCount: _totalImages + 1,
                itemBuilder: (context, index) {
                  if (index == _totalImages) {
                    return const SizedBox.shrink(); // Placeholder untuk looping
                  }
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        'images/img${index + 1}.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.only(left: 20), // Jarak dari sisi kiri
                child: Row(
                  children: List.generate(
                    _totalImages,
                    (index) => _buildIndicator(index == _currentPage),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 60),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Deals',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'See All',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                ImageSlider(
                  totalImages: 3,
                  titles: [
                    'Beli Voucher Games Harga Terjangkau Disini!',
                    'Helloo',
                    'Hai'
                  ],
                  subtitles: [
                    'Bayarnya pakai LinkAja',
                    'Beneran?',
                    'LinkAja Disini :D'
                  ],
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Latest Updates',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                ImageSlider(
                  totalImages: 3,
                  titles: [
                    'Beli Voucher Games Harga Terjangkau Disini!',
                    'Helloo',
                    'Hai'
                  ],
                  subtitles: [
                    'Bayarnya pakai LinkAja',
                    'Beneran?',
                    'LinkAja Disini :D'
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ImageSlider extends StatefulWidget {
  final int totalImages;
  final List<String> titles;
  final List<String> subtitles;

  const ImageSlider({
    Key? key,
    required this.totalImages,
    required this.titles,
    required this.subtitles,
  }) : super(key: key);

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  late PageController _pageController;
  int _currentPage =
      1; // Mulai di halaman 1 (bukan 0) untuk menambahkan looping

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Slider Image with Text
        Container(
          height: 250,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });

              // Looping ke gambar pertama (tanpa animasi)
              if (index == widget.totalImages + 1) {
                Future.delayed(const Duration(milliseconds: 300), () {
                  _pageController.jumpToPage(1);
                });
              }

              // Looping ke gambar terakhir (tanpa animasi)
              if (index == 0) {
                Future.delayed(const Duration(milliseconds: 300), () {
                  _pageController.jumpToPage(widget.totalImages);
                });
              }
            },
            itemCount: widget.totalImages + 2, // Tambahkan 2 untuk kloning
            itemBuilder: (context, index) {
              int realIndex = getRealIndex(index);

              return Column(
                children: [
                  // Gambar slider
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        'images/img${realIndex}.png', // Gambar dinamis
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Teks sesuai dengan gambar
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Align(
                      alignment:
                          Alignment.centerLeft, // Posisi teks di kiri tengah
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Teks tetap rata kiri
                        children: [
                          Text(
                            widget.titles[realIndex - 1], // Judul per gambar
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            widget.subtitles[
                                realIndex - 1], // Deskripsi per gambar
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        // Indikator PageView
      ],
    );
  }

  // Fungsi untuk mendapatkan indeks asli gambar
  int getRealIndex(int index) {
    if (index == 0) {
      return widget.totalImages; // Gambar terakhir di awal
    } else if (index == widget.totalImages + 1) {
      return 1; // Gambar pertama di akhir
    }
    return index;
  }
}

Widget _buildIndicator(bool isActive) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 5),
    width: 8,
    height: 8,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: isActive ? Colors.red : Colors.grey,
    ),
  );
}

// final PageController _pageController = PageController(initialPage: 4);
// Fungsi untuk membangun kolom ikon dan teks
Widget _buildIconColumn(Map<String, dynamic> item) {
  return Expanded(
    child: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 8),
          child: Image.asset(
            item['image'],
            width: 45,
            height: 45,
          ),
        ),
        SizedBox(
          width: 70, // Atur lebar agar teks tidak melebar
          child: Text(
            item['text'],
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            softWrap: true,
            overflow: TextOverflow.visible,
          ),
        ),
      ],
    ),
  );
}

// Data ikon dan teks untuk kedua baris
final List<Map<String, dynamic>> baris1 = [
  {'image': 'images/mobile-data.png', 'text': 'Pulsa/Data'},
  {'image': 'images/energy.png', 'text': 'Electricity'},
  {'image': 'images/satelite.png', 'text': 'Cable TV & Internet'},
  {'image': 'images/rupiah.png', 'text': 'Kartu Uang Elektronik'},
];

final List<Map<String, dynamic>> baris2 = [
  {'image': 'images/mosque.png', 'text': 'Masjid'},
  {'image': 'images/zakat.png', 'text': 'Infaq'},
  {'image': 'images/donate.png', 'text': 'Other Donations'},
  {'image': 'images/more.png', 'text': 'More'},
];
