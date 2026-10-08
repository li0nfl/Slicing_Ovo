import 'package:flutter/material.dart';
import 'profile_page.dart'; // supaya bisa pindah ke halaman Profile

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), // halaman pertama yang muncul
    );
  }
}

// ============================================
// HALAMAN HOME
// ============================================
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCFC2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ---------- BARIS ATAS: logo OVO & tombol Promo ----------
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'OVO',
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C2A9B),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFFB9A6EC),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.discount, color: Color(0xFF4C2A9B)),
                          SizedBox(width: 8),
                          Text(
                            'Promo',
                            style: TextStyle(
                              color: Color(0xFF4C2A9B),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // ---------- KARTU SALDO OVO CASH ----------
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                    colors: [Color(0xFF4A3AC4), Color(0xFF7B5FD9)],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'OVO Cash',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text('Total Saldo ',
                            style: TextStyle(color: Colors.white)),
                        Icon(Icons.visibility, color: Colors.white, size: 16),
                      ],
                    ),
                    SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tap untuk lihat',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // tombol OVO Points
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Color(0xFF4C2A9B),
                                child: Text(
                                  'P',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11),
                                ),
                              ),
                              SizedBox(width: 6),
                              Text(
                                'OVO Points',
                                style: TextStyle(
                                  color: Color(0xFF4C2A9B),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.chevron_right,
                                  color: Color(0xFF4C2A9B), size: 18),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                    // 4 tombol aksi: Top Up, Transfer, Tarik Tunai, History
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.add_circle,
                                color: Colors.white, size: 28),
                            SizedBox(height: 6),
                            Text('Top Up',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.arrow_circle_up,
                                color: Colors.white, size: 28),
                            SizedBox(height: 6),
                            Text('Transfer',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.download, color: Colors.white, size: 28),
                            SizedBox(height: 6),
                            Text('Tarik Tunai',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.list_alt,
                                color: Colors.white, size: 28),
                            SizedBox(height: 6),
                            Text('History',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              // ---------- BAGIAN PUTIH (isi utama) ----------
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Kartu "Cek data kamu"
                    Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              // gambar dari internet
                              Image.network(
                                'https://picsum.photos/id/237/100/100',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  'Cek data kamu demi kelancaran pemakaian akun OVO Premier kamu',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          Align(
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF4C2A9B),
                                foregroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 14),
                              ),
                              child: Text('Cek'),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 16),

                    // Tab menu: Favorit, Finansial, Hiburan, Pilihan Lain
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'Favorit',
                            style: TextStyle(
                              color: Color(0xFF4C2A9B),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text('Finansial', style: TextStyle(color: Colors.grey)),
                        Text('Hiburan', style: TextStyle(color: Colors.grey)),
                        Text('Pilihan Lain',
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),

                    SizedBox(height: 24),

                    // ---------- MENU BARIS PERTAMA ----------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Menu 1: Nabung by Superbank (ada label BARU)
                        SizedBox(
                          width: 80,
                          child: Column(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width: 56,
                                    height: 56,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE6DDF7),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(Icons.savings,
                                        color: Colors.black87, size: 28),
                                  ),
                                  Positioned(
                                    top: -6,
                                    left: 4,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 6, vertical: 2),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Text(
                                        'BARU',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Nabung by Superbank',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),

                        // Menu 2: Pinjaman (ada label 100JT)
                        SizedBox(
                          width: 80,
                          child: Column(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width: 56,
                                    height: 56,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE6DDF7),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(Icons.currency_exchange,
                                        color: Colors.black87, size: 28),
                                  ),
                                  Positioned(
                                    top: -6,
                                    left: 4,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 6, vertical: 2),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Text(
                                        '100JT',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Pinjaman',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),

                        // Menu 3: Uang Elektronik (ada label Rp 1)
                        SizedBox(
                          width: 80,
                          child: Column(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width: 56,
                                    height: 56,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFE8D6),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(Icons.wallet,
                                        color: Colors.black87, size: 28),
                                  ),
                                  Positioned(
                                    top: -6,
                                    left: 4,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 6, vertical: 2),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Text(
                                        'Rp 1',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Uang Elektronik',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),

                        // Menu 4: Angsuran Kredit (tanpa label)
                        SizedBox(
                          width: 80,
                          child: Column(
                            children: [
                              Container(
                                width: 56,
                                height: 56,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFD9E3),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.receipt_long,
                                    color: Colors.black87, size: 28),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Angsuran Kredit',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 24),

                    // ---------- MENU BARIS KEDUA ----------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Menu 5: Pulsa/Paket Data (ada label PROMO)
                        SizedBox(
                          width: 80,
                          child: Column(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width: 56,
                                    height: 56,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFD6E6FF),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(Icons.phone_android,
                                        color: Colors.black87, size: 28),
                                  ),
                                  Positioned(
                                    top: -6,
                                    left: 4,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 6, vertical: 2),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Text(
                                        'PROMO',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Pulsa/Paket Data',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),

                        // Menu 6: PLN (ada label PROMO)
                        SizedBox(
                          width: 80,
                          child: Column(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width: 56,
                                    height: 56,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFEFD0),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(Icons.bolt,
                                        color: Colors.black87, size: 28),
                                  ),
                                  Positioned(
                                    top: -6,
                                    left: 4,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 6, vertical: 2),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Text(
                                        'PROMO',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                'PLN',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),

                        // Menu 7: Air PDAM (tanpa label)
                        SizedBox(
                          width: 80,
                          child: Column(
                            children: [
                              Container(
                                width: 56,
                                height: 56,
                                decoration: BoxDecoration(
                                  color: Color(0xFFD6EEFF),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.water_drop,
                                    color: Colors.black87, size: 28),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Air PDAM',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),

                        // Menu 8: Internet & TV Kabel (tanpa label)
                        SizedBox(
                          width: 80,
                          child: Column(
                            children: [
                              Container(
                                width: 56,
                                height: 56,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFE0D6),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.tv,
                                    color: Colors.black87, size: 28),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Internet & TV Kabel',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 24),

                    // Banner promo (gambar dari internet)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        'https://picsum.photos/id/1015/600/250',
                        width: double.infinity,
                        height: 130,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // ---------- MENU BAWAH ----------
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 10, bottom: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.grey)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Tombol Home (sedang di halaman Home, jadi warnanya ungu)
            GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.home, color: Color(0xFF4C2A9B), size: 28),
                  SizedBox(height: 4),
                  Text(
                    'Home',
                    style: TextStyle(
                      color: Color(0xFF4C2A9B),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // Tombol Finance
            GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.account_balance_wallet,
                      color: Colors.grey, size: 28),
                  SizedBox(height: 4),
                  Text('Finance',
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ),

            // Tombol Pay (lingkaran ungu besar)
            GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFF4C2A9B),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        'QRIS',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text('Pay', style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ),

            // Tombol Inbox (ada angka 36)
            GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Icon(Icons.notifications, color: Colors.grey, size: 28),
                      Positioned(
                        top: -6,
                        right: -10,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            '36',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text('Inbox',
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ),

            // Tombol Profile -> pindah ke ProfilePage pakai Navigator.push
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.account_circle, color: Colors.grey, size: 28),
                  SizedBox(height: 4),
                  Text('Profile',
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
