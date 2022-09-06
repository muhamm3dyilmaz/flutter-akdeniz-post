import 'package:flutter/material.dart';
import 'models/category.dart';
import 'models/news.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Son Dakika',
    categoryImage:
        'https://image.shutterstock.com/shutterstock/photos/1273227022/display_1500/stock-vector-vintage-newspaper-breaking-news-template-1273227022.jpg',
  ),
  Category(
    id: 'c2',
    title: 'Gündem',
    categoryImage:
        'https://c8.alamy.com/comp/2CGEGJ9/daily-news-newspaper-with-headline-and-old-unreadable-text-vintage-grunge-blurred-paper-texture-square-background-textured-template-page-gray-beige-2CGEGJ9.jpg',
  ),
  Category(
    id: 'c3',
    title: 'Ülke',
    categoryImage:
        'https://thumbs.dreamstime.com/b/flag-turkey-modern-distressed-grunge-style-turkish-flag-grunge-style-161269628.jpg',
  ),
  Category(
    id: 'c4',
    title: 'Dünya',
    categoryImage:
        'https://www.duvargiydir.com/media/catalog/product/cache/1/image/650x/040ec09b1e35df139433887a97daa66f/h/m/hmap0046-harita-duvar-kagidi-ev-dekorasyon-tarz-dunya-haritasi.jpg',
  ),
  Category(
    id: 'c5',
    title: 'Müzik',
    categoryImage:
        'https://previews.123rf.com/images/annykos/annykos1306/annykos130600211/20179563-background-with-musical-instruments-on-a-vintage-background.jpg',
  ),
  Category(
    id: 'c6',
    title: 'Spor',
    categoryImage:
        'https://i.pinimg.com/originals/a9/80/1d/a9801d3fc6edebc9ac9b2ef879aa2790.jpg',
  ),
];

const DUMMY_NEWS = const [
  News(
    id: 'n1',
    title: 'Adanada Silahlar Patladı',
    spoiler: 'Adanada 2 grup arasında silahlı kavga...',
    content:
        'Adanada 2 grup arasında tansiyon yükseldi silahlar konuştu. Çıkan çatışmada 2 kişi öldü 6 kişi yaralandı. Çatışmanın sebebi henüz bilinmiyor. Adana Emniyeti olay hakkında soruşturma başlattı.',
    imageUrl:
        'https://icdn.ensonhaber.com/resimler/ajans/2022/05/20/da144943-052a-4483-a33b-3330e6c6ae8f.jpg',
    categories: [
      'c1',
      'c3',
    ],
    author: 'Yazar Adı',
    authorImage:
        'https://premiercarehospital.com/wp-content/uploads/2019/12/person1.jpg',
  ),
  News(
    id: 'n2',
    title: 'Galatasaray Deplasmanda Kazandı',
    spoiler: 'Galatasaray Kadıköy deplasmanında...',
    content:
        'Dün oynanan Galatasaray Fenerbahçe derbisinde sarı kırmızılılar 3 puanla sahadan ayrıldı. 3-0 biten maçın ardından Ali Koç istifa etti.',
    imageUrl:
        'https://i2.milimaj.com/i/milliyet/75/0x410/5d8a3720554280220030f973.gif',
    categories: [
      'c6',
    ],
    author: 'Yazar Adı',
    authorImage:
        'https://premiercarehospital.com/wp-content/uploads/2019/12/person1.jpg',
  ),
  News(
    id: 'n3',
    title: 'Adanada Silahlar Patladı',
    spoiler: 'Adanada 2 grup arasında silahlı kavga...',
    content:
        'Adanada 2 grup arasında tansiyon yükseldi silahlar konuştu. Çıkan çatışmada 2 kişi öldü 6 kişi yaralandı. Çatışmanın sebebi henüz bilinmiyor. Adana Emniyeti olay hakkında soruşturma başlattı.',
    imageUrl:
        'https://icdn.ensonhaber.com/resimler/ajans/2022/05/20/da144943-052a-4483-a33b-3330e6c6ae8f.jpg',
    categories: [
      'c2',
    ],
    author: 'Yazar Adı',
    authorImage:
        'https://premiercarehospital.com/wp-content/uploads/2019/12/person1.jpg',
  ),
  News(
    id: 'n4',
    title: 'MMU\'nun İlk Uçuş Tarihi Belli Oldu',
    spoiler: 'Milli 5.Nesil Savaş Uçağının ilk uçuş tarihi...',
    content:
        'Türkiye\'nin köklü savunma şirketlerinden olan TEI\nin yapımını üstlendiği Milli 5.Nesil olan savaş uçağı MMU 18 Mart 2023 tarihinde ilk uçuşunu yapacak.',
    imageUrl:
        'https://trthaberstatic.cdn.wp.trt.com.tr/resimler/1784000/milli-muharip-ucak-trthaber-1785173.jpg',
    categories: [
      'c3',
    ],
    author: 'Yazar Adı',
    authorImage:
        'https://premiercarehospital.com/wp-content/uploads/2019/12/person1.jpg',
  ),
  News(
    id: 'n5',
    title: 'Ceza Çukurova Konseri',
    spoiler: 'Ceza Rockfestte hayranlarıyla buluştu...',
    content:
        'Türkçe Rap\'in öncü isimlerinden Ceza Çukurova Rockfestte hayranlarıyla buluştu. Konserde Hayki ile çıkardığı Rüzgar isimli parçayıda söyledi. Ünlü rapçi hayranlarından büyük beğeni topladı. Ceza konser sonrası: Rap artık daha önplanda ve yeni tarzlarla kendini yenileyen dinamik bir müzik açıklamalarında bulundu. Konserdeki atmosferin ve dinleyicilerin enerjisinin eskiyi aratmadığını ekledi.',
    imageUrl:
        'https://www.dergy.com/wp-content/uploads/2021/08/ceza-konser.jpg',
    categories: [
      'c5',
      'c2',
    ],
    author: 'Yazar Adı',
    authorImage:
        'https://premiercarehospital.com/wp-content/uploads/2019/12/person1.jpg',
  ),
  News(
    id: 'n6',
    title: 'Kış Uykusu',
    spoiler: 'Patron Kış Uykusu Albümü...',
    content:
        'PMC\'nin kurucularıdan Patron\'un beklenen albümü çıktı. 12 şarkıdan oluşan albüm büyük beğeni topladı. Albümde en çok dinlenen ilk 3 parça Gurur, Huzur, ve Saian ile birlikte seslendirdiği Nefret II.',
    imageUrl:
        'https://www.rapertuar.com/wp-content/uploads/2022/08/284082063_116114360935454_1545333717387619566_n-1080x680.jpg',
    categories: [
      'c5',
    ],
    author: 'Yazar Adı',
    authorImage:
        'https://premiercarehospital.com/wp-content/uploads/2019/12/person1.jpg',
  ),
  News(
    id: 'n7',
    title: 'Macron Cezayirde',
    spoiler: 'Fransa Devlet Başkanı Macron mevkidaşı...',
    content:
        'Fransa Devlet Başkanı Macron Cezayirli mevkidaşı Abdulmecit Tebbun ile görüştü. Masada Rus-Ukrayna savaşı yüzünden yaşanan enerji krizi vardı. Geçmişte Fransa ve Cezayir arasında birçok kez ilişkiler kopmuştu. Enerji krizi sonrası Avrupalı Devletler Kuzey Afrikalı ülkelerle peşi sıra görüşüyor.',
    imageUrl:
        'https://havadiskolik.com/wp-content/uploads/2022/08/emmanuel-macron-cezayirde-abdulmecid-tebbun-ile-gorustu-tzZCICHQ.jpg',
    categories: [
      'c4',
      'c2',
    ],
    author: 'Yazar Adı',
    authorImage:
        'https://premiercarehospital.com/wp-content/uploads/2019/12/person1.jpg',
  ),
];
