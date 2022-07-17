import 'package:listmovies/models/bioskop.dart';
import 'package:listmovies/models/movies_now_local.dart';

class Location {
  String location;
  List<Bioskop> bioskopList;
  MoviesLocalNow? moviesLocalNow;

  Location({required this.location, required this.bioskopList}) {
    moviesLocalNow = MoviesLocalNow(bioskopList: bioskopList);
  }
}

List<Location> locationList = [
  Location(location: "PALEMBANG", bioskopList: [
    Bioskop(
      name: "INTERNASIONAL",
      address: "INTERNASIONAL PLAZA, Jl. Jend. Sudirman 147, Palembang",
      telp: "(0711) 357766",
    )..removeMovies([
        'Elvis',
        'Keluarga Cemara 2',
        'Everything Everywhere All at Once',
        'Ngeri-ngeri Sedap',
        'Madu Murni',
      ]),
    Bioskop(
      name: "OPI MALL XXI",
      address:
          "OPI Mall L3.01, Jl. Gubernur HA Bastari, Kel. 15 Ulu, Kec. Seberang Ulu 1, OPI, Jakabaring, Palembang, Sumatera Selatan 30257",
      telp: "(0711) 5624052",
    )..removeMovies([
        'Elvis',
        'Everything Everywhere All at Once',
        'Madu Murni',
      ]),
    Bioskop(
      name: "PALEMBANG SQUARE XXI",
      address: "Palembang Square Lantai 4, Jl. Angkatan 45/POM IX, Palembang",
      telp: "(0711) 380721",
    )..removeMovies([
        'Elvis',
        'Everything Everywhere All at Once',
        'Madu Murni',
        'Ivanna',
      ]),
    Bioskop(
      name: "PIM XXI",
      address:
          "PALEMBANG INDAH MALL Lantai 3, Jl. Letkol Iskandar No. 18, Palembang",
      telp: "(0711) 7623064",
    )..removeMovies([
        'Elvis',
        'Keluarga Cemara 2',
        'Everything Everywhere All at Once',
        'Ngeri-ngeri Sedap',
        'Madu Murni',
        'Ivanna',
      ]),
  ]),
  Location(location: "BANDUNG", bioskopList: [
    Bioskop(
      name: "BRAGA XXI",
      address: "BRAGA CITY WALK Lantai 2, Jl. Braga 99-101, Bandung",
      telp: "(022) 844 60121",
    )..removeMovies([
        'Keluarga Cemara 2',
        'Everything Everywhere All at Once',
        'Ngeri-ngeri Sedap',
        'Madu Murni',
      ]),
    Bioskop(
      name: "BTC XXI",
      address:
          "BANDUNG TRADE CENTRE P2 Lantai 3, Jl. Dr. Djundjunan No. 143-149, Bandung",
      telp: "(022) 6126521",
    )..removeMovies([
        'Elvis',
        'Keluarga Cemara 2',
        'Everything Everywhere All at Once',
        'Ngeri-ngeri Sedap',
        'Madu Murni',
      ]),
    Bioskop(
      name: "CIWALK XXI",
      address: "CIWALK Lantai 2, Jl. Cihampelas 160, Bandung",
      telp: "(022) 2061017",
    )..removeMovies([
        'Elvis',
        'Everything Everywhere All at Once',
        'Madu Murni',
      ]),
    Bioskop(
      name: "EMPIRE XXI BANDUNG",
      address: "BANDUNG INDAH PLAZA Lantai 3, Jl. Merdeka 56, Bandung",
      telp: "(022) 424 0719",
    )..removeMovies([
        'Elvis',
        'Everything Everywhere All at Once',
        'Ngeri-ngeri Sedap',
        'Madu Murni',
      ]),
  ]),
  Location(location: "JAKARTA", bioskopList: [
    Bioskop(
      name: "ARION XXI",
      address:
          "Arion Plaza Lantai 4 , Jl. Pemuda Kav. 3-4 Rawamangun, Jakarta Timur",
      telp: "(021) 475 7658",
    )..removeMovies([
        'Elvis',
        'Keluarga Cemara 2',
        'Everything Everywhere All at Once',
        'Ngeri-ngeri Sedap',
        'Madu Murni',
        'Ivanna',
      ]),
    Bioskop(
      name: "ARTHA GADING XXI",
      address:
          "MALL ARTHA GADING Lantai 6, Jl. Boulevard Artha Gading, Jakarta Utara",
      telp: "(021) 4586 4123",
    )..removeMovies([
        'Elvis',
        'Keluarga Cemara 2',
        'Everything Everywhere All at Once',
        'Madu Murni',
      ]),
    Bioskop(
      name: "BASSURA XXI",
      address: "Bassura City Lt. 2, Jl. Basuki Rahmat No. 1, Jakarta Timur",
      telp: "(021) 22807229",
    )..removeMovies([
        'Elvis',
        'Keluarga Cemara 2',
        'Everything Everywhere All at Once',
        'Ngeri-ngeri Sedap',
        'Madu Murni',
      ]),
    Bioskop(
      name: "CIPINANG XXI",
      address:
          "CIPINANG XXI, MAL CIPINANG INDAH Lt.3, Jl. Raya Kalimalang No.88, Jakarta Timur",
      telp: "(021) 29486938",
    )..removeMovies([
        'Elvis',
        'Everything Everywhere All at Once',
        'Madu Murni',
      ]),
    Bioskop(
      name: "DAAN MOGOT XXI",
      address: "MAL DAAN MOGOT, Jl. Raya Daan Mogot KM 16, Jakarta Barat",
      telp: "(021) 544 6733",
    )..removeMovies([
        'Elvis',
        'Keluarga Cemara 2',
        'Everything Everywhere All at Once',
        'Ngeri-ngeri Sedap',
        'Madu Murni',
      ]),
    Bioskop(
      name: "EPICENTRUM XXI",
      address:
          "Epicentrum Walk Ground Floor, Jl. H.R. Rasuna Said, Jakarta Selatan",
      telp: "021 2994 1300",
    )..removeMovies([
        'Elvis',
        'Keluarga Cemara 2',
        'Minions 2: The Rise of Gru',
        'Everything Everywhere All at Once',
        'Ngeri-ngeri Sedap',
        'Madu Murni',
        'Ivanna',
      ]),
  ]),
  Location(location: "SURABAYA", bioskopList: [
    Bioskop(
      name: "CIPUTRA WORLD XXI",
      address: "Ciputra World Lantai 4, Jl. Mayjen Sungkono No. 89, Surabaya",
      telp: "(031) 512 00021",
    )..removeMovies([
        'Elvis',
        'Keluarga Cemara 2',
        'Everything Everywhere All at Once',
        'Ngeri-ngeri Sedap',
        'Madu Murni',
      ]),
    Bioskop(
      name: "DELTA XXI",
      address: "PLAZA SURABAYA Lantai 5, Jl. Pemuda 31-37, Surabaya",
      telp: "(031) 5311668",
    )..removeMovies([
        'Elvis',
        'Everything Everywhere All at Once',
        'Madu Murni',
      ]),
    Bioskop(
      name: "GALAXY XXI",
      address: "GALAXY MALL, Jl. Dharma Husada No. 35-37, Surabaya",
      telp: "(031) 593 7121",
    )..removeMovies([
        'Elvis',
        'Keluarga Cemara 2',
        'Everything Everywhere All at Once',
        'Ngeri-ngeri Sedap',
        'Madu Murni',
      ]),
    Bioskop(
      name: "GRAND CITY XXI",
      address: "Grand City Mal, Jl. Gubeng Pojok No. 1, Surabaya",
      telp: "(031) 524 05821",
    )..removeMovies([
        'Keluarga Cemara 2',
        'Everything Everywhere All at Once',
        'Ngeri-ngeri Sedap',
        'Madu Murni',
        'Ivanna',
      ]),
  ]),
]..sort((a, b) => a.location.compareTo(b.location));
