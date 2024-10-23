import 'package:flutter/material.dart';

class Historypage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<Historypage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.grey[200], // Menambahkan warna background abu-abu 50
      appBar: AppBar(
        centerTitle: true,
        title: Text('Transaction History'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Pending'),
            Tab(text: 'Done'),
          ],
          labelColor: Colors.black, // Warna teks tab yang dipilih menjadi ungu
          unselectedLabelColor:
              Colors.grey, // Warna teks tab yang tidak dipilih menjadi hitam
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: Colors.red, width: 3.0),
            insets: EdgeInsets.symmetric(horizontal: 140),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Pending Transactions Tab
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/pendingg.png'),
                Text(
                  'Semua Transaksi Sudah Beres!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(height: 8), // Memberikan jarak antara teks
                Text(
                  'Setiap transaksi yang masih dalam proses akan muncul di halaman ini',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),

          // Done Transactions Tab
          ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              TransactionCard(
                date: '15 Sep 2024, 17:32 WIB',
                merchant: 'Indomaret_purchase',
                amount: 'Rp45.400',
                status: 'Success',
              ),
              TransactionCard(
                date: '15 Sep 2024, 17:32 WIB',
                merchant: 'Indomaret_purchase',
                amount: 'Rp1.000.000',
                status: 'Success',
              ),
              TransactionCard(
                date: '15 Sep 2024, 17:32 WIB',
                merchant: 'Indomaret_purchase',
                amount: 'Rp100.000',
                status: 'Success',
              ),
              TransactionCard(
                date: '15 Sep 2024, 17:32 WIB',
                merchant: 'Indomaret_purchase',
                amount: 'Rp50.000',
                status: 'Success',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TransactionCard extends StatelessWidget {
  final String date;
  final String merchant;
  final String amount;
  final String status;

  TransactionCard({
    required this.date,
    required this.merchant,
    required this.amount,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Baris Pay Merchant dan Amount
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pay Merchant',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  amount,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            // Baris Date dan Status
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(date, style: TextStyle(color: Colors.grey)),
                Text(
                  status,
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
            SizedBox(height: 8),
            Divider(), // Garis pemisah sebelum merchant
            SizedBox(height: 8),
            Text(merchant),
          ],
        ),
      ),
    );
  }
}
