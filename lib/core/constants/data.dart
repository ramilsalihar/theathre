import 'package:theatre/data/model/candidate_model.dart';
import 'package:theatre/data/model/club_model.dart';
import 'package:theatre/data/model/event_model.dart';

List<ClubModel> clubs = [
  ClubModel(
    title: "Театральная студия 'Прожектор'",
    description:
        "Театральная студия для детей и подростков от 8 до 16 лет! Развиваем актёрское мастерство и креативность. Занятия проходят в Нарынском театре.",
    schedule: "Пн, Ср, Пт с 16:00 до 18:00",
    contactDetails:
        "Нарынский театр, +996 312 123 456, theater-club@naryn-theater.kg",
    isActive: true,
    image:
        "https://optim.tildacdn.com/tild3961-3733-4738-a566-333730396239/-/resize/534x/-/format/webp/11_-_theater.png",
    headsOfClub: ["Алтынай Шаршенбекова", "Бакыт Рустамов"],
    freeSpots: 5,
    totalSpots: 10,
    price: 15.0,
  ),
  ClubModel(
    title: "Танцевальная группа 'Жылдыз'",
    description:
        "Танцевальная группа для детей от 7 до 15 лет! Приглашаем всех! Занятия проходят в Нарынском театре.",
    schedule: "Вт, Чт, Сб с 15:00 до 17:00",
    contactDetails:
        "Нарынский театр, +996 312 987 654, dance-group@naryn-theater.kg",
    isActive: true,
    image: "https://i.ytimg.com/vi/oraxKMypSEQ/maxresdefault.jpg",
    headsOfClub: ["Айпери Кубик кызы", "Нурсултан Акматов"],
    freeSpots: 8,
    totalSpots: 15,
    price: 20.0,
  ),
  ClubModel(
    title: "Клуб кукольного театра 'Фантазия'",
    description:
        "Клуб кукольного театра для детей от 10 до 14 лет. Развиваем творчество и актёрские навыки. Занятия проходят в Нарынском театре.",
    schedule: "Пн, Ср, Пт с 14:00 до 16:00",
    contactDetails:
        "Нарынский театр, +996 312 765 432, puppet-club@naryn-theater.kg",
    isActive: true,
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI7UM0B0GvBoJ_wkEkRIxJYsY3X-diYJHqXr-eMsKCpg&s",
    headsOfClub: ["Таалайгүл Токтогазиева", "Эрмек Иманалиев"],
    freeSpots: 12,
    totalSpots: 20,
    price: 25.0,
  ),
  ClubModel(
    title: "Школа сценического мастерства 'Импро'",
    description:
        "Школа сценического мастерства для молодёжи от 12 до 18 лет. Учимся выражать себя через театр. Занятия проходят в Нарынском театре.",
    schedule: "Вт, Чт, Сб с 17:00 до 19:00",
    contactDetails:
        "Нарынский театр, +996 312 345 678, improv-school@naryn-theater.kg",
    isActive: false,
    image: "https://vizion.in.ua/Art/trening-akterskiy1.jpg",
    headsOfClub: ["Айгерим Расул кызы", "Уланбек Матисаков"],
    freeSpots: 7,
    totalSpots: 12,
    price: 18.0,
  ),
];

List<EventModel> events = [
  EventModel(
    title: "Концерт Малика Дина",
    description: "",
    date: "2024-05-10",
    time: "10:00 AM",
    image: "https://api.kassir.kg/images/16998627721.jpg",
  ),
  EventModel(
    title: "Вечер поэзии и музыки",
    description:
        "Поэтический вечер с участием поэтов и музыкантов. Поддержим молодые таланты! Мероприятие проходит в Нарынском театре.",
    date: "2024-05-15",
    time: "02:00 PM",
    image: "https://24.kg/files/media/287/287488.jpeg",
  ),
  EventModel(
    title: "Фестиваль молодёжного театра",
    description:
        "Ежегодный фестиваль молодёжного театра с разнообразными спектаклями, проходящий в Нарыне!",
    date: "2024-06-01",
    time: "06:00 PM",
    image: "https://mta-barnaul.ru/wp-content/uploads/IMG_9597.jpg",
  ),
  EventModel(
    title: "Мастер-класс по актёрскому мастерству",
    description:
        "Интерактивный мастер-класс от известного режиссёра и актёра. Участники смогут узнать секреты театрального искусства и попробовать свои силы на сцене.",
    date: "2024-06-10",
    time: "05:00 PM",
    image:
        "https://www.e-xecutive.ru/uploads/article/image/1831621/thumb_photo_2021-06-09_11-20-55.jpg",
  ),
  EventModel(
    title: "TEDx UCA",
    description: "TEDx ивент от Университета Центральной Азии!",
    date: "2024-06-20",
    time: "03:00 PM",
    image: "https://ucentralasia.org/media/2zlkuirj/ted-naryn2024-jenny-2.jpg",
  ),
];

List<CandidateModel> candidates = [
  CandidateModel(
      name: 'John',
      surname: 'Doe',
      phoneNumber: '1234567890',
      gender: 'Male',
      age: 30),
  CandidateModel(
      name: 'Jane',
      surname: 'Doe',
      phoneNumber: '0987654321',
      gender: 'Female',
      age: 28),
  CandidateModel(
      name: 'Bob',
      surname: 'Smith',
      phoneNumber: '1122334455',
      gender: 'Male',
      age: 35),
];
