void main() {
  // Identitas Mahasiswa
  String nama = "Ganang Andika Kurnia Putra";
  String nim = "244107060008";

  // Ambil 3 digit terakhir NIM
  double nilaiUnikNIM = double.parse(nim.substring(nim.length - 3));

  // List harga barang (minimal 5 angka desimal)
  List<double> hargaBarang = [25000.50, 45000.75, 32000.25, 60000.00, 50000.50];

  // Tambahkan nilai unik NIM ke dalam list
  hargaBarang.add(nilaiUnikNIM);

  // Hitung total harga awal
  double totalAwal = hitungTotal(hargaBarang);

  // Null Safety
  String? pesanDiskon;

  double persenDiskon = 0.0;

  // Percabangan diskon
  if (totalAwal > 200000) {
    persenDiskon = 0.10;
    pesanDiskon = "Diskon 10%";
  } else if (totalAwal >= 100000 && totalAwal <= 200000) {
    persenDiskon = 0.05;
    pesanDiskon = "Diskon 5%";
  } else {
    persenDiskon = 0.0;
    pesanDiskon = "Tidak ada diskon";
  }

  // Hitung diskon dan total akhir
  double besarDiskon = totalAwal * persenDiskon;
  double totalAkhir = totalAwal - besarDiskon;

  // Output
  print("===== SISTEM PENGOLAH DISKON TOKO TERPERSONALISASI =====");
  print("Nama            : $nama");
  print("NIM             : $nim");
  print("Nilai Unik NIM  : $nilaiUnikNIM");
  print("Total Awal      : Rp ${totalAwal.toStringAsFixed(2)}");
  print("Keterangan      : ${pesanDiskon!}");
  print("Besar Diskon    : Rp ${besarDiskon.toStringAsFixed(2)}");
  print("Total Akhir     : Rp ${totalAkhir.toStringAsFixed(2)}");
}

// Fungsi untuk menghitung total harga
double hitungTotal(List<double> daftarHarga) {
  double total = 0.0;

  // Perulangan for-in
  for (double harga in daftarHarga) {
    total += harga;
  }

  return total;
}
