class Movie {
  String image;
  String title;
  String genre;
  String producer;
  String director;
  String writer;
  String duration;
  String production;
  String casts;
  String trailer;
  String synopsis;

  Movie({
    required this.image,
    required this.title,
    required this.genre,
    required this.producer,
    required this.director,
    required this.writer,
    required this.production,
    required this.casts,
    required this.synopsis,
    required this.duration,
    required this.trailer,
  });
}

Map<String, List<Movie>> movieList = {
  'NowPlaying': [
    Movie(
        trailer: 'https://youtu.be/Go8nTmfrQd8',
        image:
            "https://firebasestorage.googleapis.com/v0/b/listmovies-aa061.appspot.com/o/NowPlaying%2F165589422282087_405x594.jpg?alt=media&token=634daa6b-d92a-49af-b816-9c851ccdd2ba",
        title: 'Thor: Love and Thunder',
        genre: 'Action, Adventure, Comedy',
        producer: 'Kevin Feige, Brad Winderbaum',
        director: 'Taika Waititi',
        writer: 'Taika Waititi',
        production: 'Walt Disney Pictures',
        duration: '119 Minutes',
        casts:
            'Chris Hemsworth, Natalie Portman, Taika Waititi, Karen Gillan, Chris Pratt, Christian Bale, Tessa Thompson, Russell Crowe, Matt Damon, Vin Diesel, Bradley Cooper',
        synopsis:
            'Thor kali ini meminta bantuan Valkyrie, Korg dan mantan kekasihnya, Jane Foster untuk melawan Gorr the God Butcher, yang berniat membasmi para dewa.'),
    Movie(
        trailer: 'https://youtu.be/6DxjJzmYsXo',
        image:
            'https://firebasestorage.googleapis.com/v0/b/listmovies-aa061.appspot.com/o/NowPlaying%2F165460605844936_405x594.jpg?alt=media&token=e2714362-878a-49e7-bf98-7132df7b9503',
        title: 'Minions 2: The Rise of Gru',
        genre: 'Animation, Adventure, Comedy',
        producer: 'Chris Meledandri, Chris Renaud, Janet Healy',
        director: 'Kyle Balda, Brad Ableson, Jonathan Del Val',
        writer: 'Matthew Fogel',
        production: 'Universal Pictures',
        duration: '87 Minutes',
        casts:
            'Steve Carell, Taraji P. Henson, Michelle Yeoh, RZA , Jean-Claude Van Damme, Lucy Lawless, Dolph Lundgren, Danny Trejo, Russell Brand, Julie Andrews, Alan Arkin, Pierre Coffin',
        synopsis:
            'Kisah tak terduga tentang mimpi seorang anak berusia dua belas tahun untuk menjadi penjahat super terhebat di dunia.'),
    Movie(
        trailer: 'https://youtu.be/O29hLG_37qI',
        image:
            'https://firebasestorage.googleapis.com/v0/b/listmovies-aa061.appspot.com/o/NowPlaying%2F165467588636709_405x594.jpg?alt=media&token=b5ddc9b9-23f9-417e-a459-e570ca8efc86',
        title: 'Ivanna',
        genre: 'Horror',
        producer: 'Manoj Punjabi',
        director: 'Kimo Stamboel',
        writer: 'Lele Laila',
        production: 'MD Pictures',
        duration: '103 Minutes',
        casts:
            'Caitlin Halderman, Jovarel Callum, Junior Roberts, Shandy William, Sonia Alyssa, Taskya Namya, Tanta Ginting, Rina Hassyim, Yati Surachman, Yayu Unru, M.Khan, Kenes Andari, Hiroaki Kato',
        synopsis:
            'Sejak kematian ayah dan ibunya, Ambar dan Dika pindah ke sebuah panti jompo milik sahabat orang tua mereka dan anaknya, Agus. Panti Jompo Masa Toea merumahi tiga orang; Nenek Ani, Kakek Farid, dan Oma Ida. Ketiganya diurus oleh Rani, seorang suster yang juga pacar Agus. Tidak lama setelah kepindahan Ambar dan Dika, cucu Oma Ida, Arthur, datang untuk merayakan Idul Fitri bersama sang nenek.\n\nAmbar yang kini memiliki kemampuan untuk melihat hal-hal mistis, secara tidak sengaja mendapatkan penglihatan dari masa lalu. Di mana seorang perempuan Belanda bernama Ivanna mengalami penyiksaan dari tentara Jepang, dan lebih parahnya lagi, pengkhianatan dari para pribumi, yang akhirnya mengakibatkan ia kehilangan kepalanya.\n\nSerangkaian kejadian mistis pun mulai menghantui Ambar dan seluruh penghuni panti jompo, terlebih setelah mereka menemukan sebuah patung tanpa kepala di ruang bawah tanah beserta dengan piringan hitam yang berisi lagu menyeramkan.\n\nDi Hari Lebaran, keadaan semakin mencekam ketika penghuni panti menemukan Nenek Ani meninggal dengan keadaan tanpa kepala. Tragedi itu membuat semua orang panik, terlebih ketika satu persatu misteri dendam Ivanna terungkap. Dengan keselamatan seluruh penghuni panti kini terancam, Ambar dituntut untuk menyelesaikan dendam Ivanna, sebelum arwah itu merenggut nyawa mereka semua.'),
    Movie(
        trailer: 'https://youtu.be/wBDLRvjHVOY',
        image:
            'https://firebasestorage.googleapis.com/v0/b/listmovies-aa061.appspot.com/o/NowPlaying%2F165509920350985_405x594.jpg?alt=media&token=2bd04362-a527-43c0-aa08-d54ed10e5e32',
        title: 'Elvis',
        genre: 'Biography, Drama, Music',
        producer:
            'Gail Berman, Baz Luhrmann, Catherine Martin, Patrick McCormick, Schuyler Weiss',
        director: 'Baz Luhrmann',
        writer: 'Baz Luhrmann, Sam Bromell, Craig Pearce, Jeremy Doner',
        production: 'Warner Bros. Pictures',
        duration: '159 Minutes',
        casts:
            'Dacre Montgomery, Tom Hanks, Austin Butler, Olivia DeJonge, Natasha Bassett, Luke Bracey, David Wenham, Richard Roxburgh, Kodi Smit-McPhee, Xavier Samuel',
        synopsis:
            'Perjalanan masa kecil di Tupelo, Mississippi hingga awal ketenarannya di Memphis, Tennessee lalu perjalanan sukses besar di Las Vegas, Elvis Presley menjadi bintang rock n roll pertama yang mengubah dunia dengan musiknya.'),
    Movie(
        trailer: 'https://youtu.be/DdpM2cLoJUQ',
        image:
            'https://firebasestorage.googleapis.com/v0/b/listmovies-aa061.appspot.com/o/NowPlaying%2F165467604350903_405x594.jpg?alt=media&token=0f0fcf64-9917-4d9f-9bec-3061b0026d1b',
        title: 'Keluarga Cemara 2',
        genre: 'Drama, Keluarga',
        producer: 'Anggia Kharisma',
        director: 'Ismail Basbeth',
        writer: 'M. Irfan Ramli',
        production: 'Visinema Pictures',
        duration: '114 Minutes',
        casts:
            'Ringgo Agus Rahman, Nirina Zubir, Zara Adhisty, Widuri Puteri, Niloufer Bahalwan, Muzakki Ramdhan, Asri Welas, Abdurrahman Arif, Kafin Sulthan, Joshia Frederico',
        synopsis:
            'Setelah jatuh miskin, Emak dan Abah bertahan hidup di desa. Ingin sejahtera, tapi lupa dengan kebahagiaan anak-anaknya.\n\nAbah sibuk dengan pekerjaan barunya, tak bisa tiap hari antar jemput anak-anaknya. Emak mencari sampingan agar keluarganya punya pendapatan tambahan dan juga tabungan. Sedangkan Euis masuk masa pubernya, ia ingin punya privasi dan tak mau lagi sekamar dengan Ara. Merasa diabaikan, Ara membuat ulah hingga kabur dari rumah. Ia merasa rumahnya bukan lagi istana yang paling indah. Keluarganya sudah berubah.\n\nBisakah Abah dan Emak melewati masa sulit dan berkumpul lagi dengan harta berharganya?'),
    Movie(
        trailer: 'https://youtu.be/wxN1T1uxQ2g',
        image:
            'https://firebasestorage.googleapis.com/v0/b/listmovies-aa061.appspot.com/o/NowPlaying%2F165604137831090_405x594.jpg?alt=media&token=488c4c84-034f-428b-882f-83d732ef22fb',
        title: 'Everything Everywhere All at Once',
        genre: 'Action, Adventure, Comedy',
        producer:
            'Mike Larocca, Anthony Russo, Joe Russo, Daniel Scheinert, Jonathan Wang, Daniel Kwan',
        director: 'Daniel Kwan, Daniel Scheinert',
        writer: 'Daniel Kwan, Daniel Scheinert',
        production: 'A24, AGBO Production',
        duration: '139 Minutes',
        casts:
            'Michelle Yeoh, Jamie Lee Curtis, Stephanie Hsu, Ke Huy Quan, James Hong, Tallie Medel, Jenny Slate, Harry Shum Jr., Biff Wiff',
        synopsis:
            'Evelyn Wang (Michelle Yeoh) seorang imigran Tiongkok terbawa dalam petualangan luar biasa, di mana dia sendiri yang dapat menyelamatkan dunia dengan menjelajahi alam semesta lain yang terhubung dengan kehidupan yang bisa dia jalani.'),
    Movie(
        trailer: 'https://youtu.be/io5YgKdEON8',
        image:
            'https://firebasestorage.googleapis.com/v0/b/listmovies-aa061.appspot.com/o/NowPlaying%2F16529343191301_405x594.jpg?alt=media&token=d7b805b0-7c54-4d2d-86a5-3487960e2d76',
        title: 'Ngeri-ngeri Sedap',
        genre: 'Drama, Keluarga',
        producer: 'Dipa Andika',
        director: 'Bene Dion Rajagukguk',
        writer: 'Bene Dion Rajagukguk',
        production: 'Imajinari, Visionari Film Fund',
        duration: '114 Minutes',
        casts:
            'Arswendy Beningswara Nasution, Tika Panggabean, Boris Bokir Manullang, Gita Bhebhita Butar-Butar, Lolox, Indra Jegel',
        synopsis:
            'Pak Domu dan Mak Domu yang tinggal bersama Sarma, ingin sekali tiga anaknya: Domu, Gabe dan Sahat yang sudah lama merantau pulang untuk menghadiri acara adat, tetapi mereka menolak pulang karena hubungan mereka tidak harmonis dengan Pak Domu.\n\nPak Domu dan Mak Domu akhirnya berpura-pura bertengkar dan ingin bercerai demi mendapatkan perhatian dari anak-anaknya.'),
    Movie(
        trailer: 'https://youtu.be/QTyNJWhH9d8',
        image:
            'https://firebasestorage.googleapis.com/v0/b/listmovies-aa061.appspot.com/o/NowPlaying%2F165295866547226_405x594.jpg?alt=media&token=773ae82f-9b86-4349-a990-c512a7eb139d',
        title: 'Madu Murni',
        genre: 'Drama, Comedy',
        producer: 'Chand Parwez Servia, Fiaz Servia',
        director: 'Monty Tiwa',
        writer: 'Musfar Yasin',
        production: 'Starvision',
        duration: '96 Minutes',
        casts:
            'Irish Bella, Ammar Zoni, Aulia Sarah, Tanta Ginting, Ira Wibowo, Jaja Mihardja, Yayu Unru, Meriam Bellina, Epy Kusnandar, Qausar Harta Yudana, Panji Zoni, Mo Sidik, Joe P Project, Bima Azriel',
        synopsis:
            'Mustaqim (Ammar Zoni) mantan guru ngaji bekerja sebagai penagih hutang dengan harapan mendapat penghasilan yang lebih banyak. Tapi, Murni (Irish Bella), isterinya, tak pernah mau menerima pemberian uang dari suaminya karena tidak setuju dengan pekerjaan suaminya yang penuh resiko dunia akhirat. Atas saran rekannya Rojak (Tanta Ginting), Mustaqim kawin lagi dengan Yati (Aulia Sarah). Bagaimana kehidupan yang mereka jalani? Siap-siap terhibur dengan keunikan keluarga ini, segera di Bioskop.')
  ],
  'UpComing': [
    Movie(
        trailer: 'https://youtu.be/1jkw2JPCl18',
        image:
            'https://firebasestorage.googleapis.com/v0/b/listmovies-aa061.appspot.com/o/UpComing%2F165692356337153_405x594.jpg?alt=media&token=77c7f1d5-90d8-4c9f-a578-5f4f4d535c43',
        title: 'DC League of Super-Pets',
        genre: 'Animation, Action, Adventure',
        producer:
            'Dany Garcia, Hiram Garcia, Patricia Hicks, Dwayne Johnson, Jared Stern',
        director: 'Jared Stern, Sam Levine',
        writer: 'Jared Stern, John Whittington',
        production: 'Warner Bros. Pictures',
        duration: '105 Minutes',
        casts:
            'Dwayne Johnson, Kevin Hart, Keanu Reeves, Vanessa Bayer, Natasha Lyonne, Diego Luna, John Krasinski, Marc Maron, Kate McKinnon, Dascha Polanco, Ben Schwartz',
        synopsis:
            'Krypto the Super-Dog dan Superman adalah sahabat yang tak terpisahkan. Keduanya berbagi kekuatan super dan memerangi kejahatan bersama di Metropolis. Namun, Krypto harus menguasai kekuatannya sendiri untuk misi penyelamatan saat Superman diculik.'),
    Movie(
        trailer: 'https://youtu.be/hTMNiQ0w4s0',
        image:
            'https://firebasestorage.googleapis.com/v0/b/listmovies-aa061.appspot.com/o/UpComing%2F165658212781863_405x594.jpg?alt=media&token=5dd6260f-4840-4c3e-80bf-c8777d06d4fb',
        title: 'JO Sahabat Sejati',
        genre: 'Drama, Family, Adventure',
        producer: 'Amanda Latief',
        director: 'Alex Latief',
        writer: 'Alvin Latief, Amanda Latief',
        production: 'PT. Alamanda Mandiri Sejahtera',
        duration: '106 Minutes',
        casts:
            'Ismu Tanjung, Amanda Latief, Novika Siregar, Cornel Nadeak, Adry Wicaksosno, Dolly Martin, Amien Kamil, Nena Rosier, Aniek, Romandha Edwin',
        synopsis:
            'Jo adalah seekor kuda peliharaan milik Arif yang berprofesi sebagai seorang guru di sekolah. Jo juga merupakan kuda kesayangan Arif dan adiknya Lisa. Selain Arif dan Lisa, Jo juga bersahabat dengan tiga orang murid Arif, bernama Genta, Cinta dan Danar. Persahabatan terjalin diantara mereka, sejak Jo berhasil menyelamatkan tiga sekawan dari suatu kejadian, yang hampir saja membahayakan nyawa tiga sekawan. Pada mulanya masyarakat kampung menyayangi Jo, karena Jo adalah seekor kuda yang pintar dan suka menolong. Namun sayang, suatu peristiwa yang datang secara bertubi-tubi membuat Jo berada di posisi yang salah dan membuat Jo jadi dibenci oleh masyarakat kampung. Jo juga dituduh menjadi penyebab segala peristiwa yang terjadi. Karena hal itulah kemudian Jo diusir dari kampung dan terpisah dari para sahabatnya. Dalam petualangan penuh persahabatan tersebut, mereka saling merindukan. Jo masih berharap, ia bisa kembali lagi untuk bertemu dan memberikan arti persahabatan, walau harus menghadapi rintangan terbesar dalam hidupnya.'),
    Movie(
        trailer: 'https://youtu.be/FbwFrv_6ER0',
        image:
            'https://firebasestorage.googleapis.com/v0/b/listmovies-aa061.appspot.com/o/UpComing%2F165657486461109_405x594.jpg?alt=media&token=2b49b17d-0485-458c-b37f-f0afb4c72751',
        title: 'The Sacred Riana 2 - Bloody Mary',
        genre: 'Horror, Drama',
        producer: 'Muhammad Hananto',
        director: 'Billy Christian',
        writer: 'Andy Oesman, Billy Christian',
        production: 'Nant Entertainment',
        duration: '103 Minutes',
        casts:
            'The Sacred Riana, Elina Joerg, Sharon Sahertiian, Shenina Cinnamon, Armando Jordy, Aisyah Aqilah, Helene Kamga, Aura Kasih, Brooklyn Alif, Ciara Nadine, Anindhita Asmarani, Roweina Oemboh, Astrid Sart',
        synopsis:
            'Riana yang sedang berada dalam kondisi terpuruk sejak kehilangan Riani mendapatkan kabar bahwa kini boneka tersebut berada di sebuah asrama perempuan bernama Elodia. Mengetahui kabar tersebut, Riana pun meminta kepada kedua orang tuanya untuk dapat pindah sekolah ke Elodia. Permintaan Riana tersebut langsung dipenuhi oleh kedua orang tuanya yang berharap Riana dapat kembali bersemangat seperti dulu. Namun, asrama Elodia ternyata mengatur perilaku siswinya dengan sangat ketat. Bahkan mereka meletakan 100 cermin di seluruh lorong asrama, agar para siswi yang hendak melakukan keburukan langsung membatalkan niat mereka karena malu ketika melihat ‘refleksi’ dari diri mereka sendiri lewat cermin-cermin tersebut. Ketatnya aturan tersebut menciptakan tekanan, dan melahirkan sekelompok siswi perundung yang senang melakukan permainan ganjil menggunakan cermin. Yaitu permainan dengan melakukan ritual pemanggilan arwah dari bloody mary bersama dengan siswisiswi yang baru pindah. Permainan yang awalnya hanya sebagai cara untuk menakut-nakuti siswi baru, berubah menjadi petaka ketika muncul arwah yang berusaha mencelakai para siswi. Boneka riani pun dianggap sebagai dalang di balik petaka ini. Riana pun harus terjebak dalam kondisi dilematis, antara harus kembali membawa pulang boneka Riani atau menemukan jawaban dari berbagai terror yang dituduhkan kepada boneka Riani.'),
    Movie(
        trailer: 'https://youtu.be/zZsN2BMFuWw',
        image:
            'https://firebasestorage.googleapis.com/v0/b/listmovies-aa061.appspot.com/o/UpComing%2F165587310454634_405x594.jpg?alt=media&token=de96e6db-68c3-42e9-94f7-c5cd537519f9',
        title: 'Bukan Cinderella',
        genre: 'Drama, Comedy, Romance',
        producer: 'Unchu Viejay',
        director: 'Adi Garin',
        writer: 'Queen B',
        production: 'Super Media Pictures',
        duration: '88 Minutes',
        casts:
            'Fujianti Utami, Rafael Adwel, Gusti Rayhan, Annette Edoarda, Raisya Bawazier, Claudy Putri, Febi Lora, Ahmad Pule, Fajar Kibo, Jesslyn Elvaretta, Damara Finch, Tanta Ginting, Putri Ayudya, Ence Bagus,',
        synopsis:
            'Amora (Fujianti Utami) gadis remaja SMA, penyuka beladiri jauh dari seanggun Cinderella dipertemukan oleh Adam (Rafael Adwel) atas ketidaksengajaan sepatu yang tertukar sebelah. Mereka terjebak dalam permainan cinta dari rencana sahabatnya namun berujung saling mencintai, bahkan mampu mengubah persahabatan kelas unggulan dengan kelas buangan yang sedari dulu bermusuhan, berseminya keharmonisan orang tua Adam atas pertengkaran yang hebat hingga nilai-nilai moral. Tak terpikirkan jika rahasia Adam yang sudah tersimpan lama bisa terbongkar yakni bocah botak yang selalu mengganggu Amora sewaktu TK.'),
  ]
};
