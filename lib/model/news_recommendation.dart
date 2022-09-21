class NewsRecommendation {
  String image;
  String title;
  String caption;
  String date;
  String source;

  NewsRecommendation({
    required this.image,
    required this.title,
    required this.caption,
    required this.date,
    required this.source,
  });
}

var newsRecommendationList = [
  NewsRecommendation(
      image:
      'https://img.okezone.com/content/2022/09/16/49/2669130/persib-bandung-bantai-barito-putera-5-2-ini-klasemen-sementara-liga-1-2022-2023-fULSAOytTq.jpg',
      title: 'Persib Bandung Bantai Barito Putera 5-2',
      caption:
          'PERSIB Bandung bantai Barito Putera 5-2, klasemen sementara Liga 1 2022-2023 akan dibahas pada artikel ini. Persib Bandung sukses melanjutkan tren positif mereka usai melibas Barito Putera dengan skor akhir 5-2.\n\nBerlaga di Stadion Gelora Bandung Lautan Api, anak asuh Luis Milla tampil impresif dengan mendominasi jalannya pertandingan. Melihat statistik, Maung Bandung -julukan Persib Bandung- mencatatkan 66% penguasaan bola.\n\nSementara Barito Putera hanya mampu mencatatkan penguasaan bola sebesar 33%. Pada pertandingan ini, Persib Bandung langsung memimpin pada babak pertama atas Barito Putera dengan skor 4-0.\n\nGol pertama Barito Putera dicetak Buyung Ismu Lessy pada menit ke-56 dan Kahar Musakkaar pada menit ke-60. Namun, perjuangan Barito Putera untuk melakukan comeback dikandaskan Henhen Herdiana usai menambah keunggulan Persib Bandung pada menit ke-68.',
      date: '16 Sep 2022',
      source: 'bola.okezone.com'),
  NewsRecommendation(
      image:
      'https://wacaberita.com/wp-content/uploads/2022/09/image-24-1028x609.png',
      title: 'Yuk! Meriahkan HUT ke-212 Kota Bandung dengan Cara Ini',
      caption:
      'Kota Bandung bakal menginjak usia 212 tahun pada 25 September 2022. Pemkot Bandung pun mengajak warga menyemarakkan Hari Ulang Tahun (HUT) atau Hari Jadi Kota Bandung (HJKB) dengan mengibarkan bendera Indonesia hingga mendekorasi lingkungan.',
      date: '1 Sep 2022',
      source: 'detik.com'),

  NewsRecommendation(
      image:'https://img.inews.co.id/media/600/files/networks/2022/05/26/0c1f5_yana-mulyana.jpg',
      title: 'Bangga! Kota Bandung Dinobatkan Sebagai Kota Dengan Makanan Tradisional Terbaik di Asia',
      caption: 'Kota Bandung dinobatkan sebagai salah satu kota dengan makanan tradisional terbaik di Asia versi Taste Atlas Awards 2021.\n\nBandung sukses meraih posisi kelima dalam Taste Atlas Awards 2021 untuk kategori "Kota Terbaik di Asia untuk Makanan Tradisional".\n\nBandung mendapatkan poin 4,39 setelah Bangkok, Hongkong, New Delhi, dan Seoul.\n\nSebelumnya, Kota Bandung juga meraih peringkat ketujuh di dunia dengan kategori "Kota Terbaik di Dunia untuk Makanan Tradisional".\n\nAda sekitar 16 makanan dan dua minuman lokal khas Bandung yang masuk ke dalam rekomendasi Tasteatlas melalui laman resminya.\n\nSajian kuliner khas Bandung yang jadi favorit adalah batagor, mi kocok, kupat tahu, dan soto Bandung. Batagor dan mi kocok merupakan makanan tradisional Bandung yang mendapatkan skor tertinggi yaitu 4.5. Sementara untuk minuman, Bajigur dan Bandrek masuk dalam rekomendasi Taste Atlas.\n\nBukan tanpa alasan, Bandung dikenal sebagai kota dengan masakan dan jajanan terbaik yang bisa memanjakan lidah para penikmatnya.',
      date: '26 Mei 2022',
      source: 'bandung.go.id'),
];
