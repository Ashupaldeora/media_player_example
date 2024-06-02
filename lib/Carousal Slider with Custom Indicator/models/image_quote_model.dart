class DataModel {
  final String image;
  final String quote;
  final String character;

  DataModel(
      {required this.image, required this.quote, required this.character});
}

List<DataModel> imageQuoteData = [
  DataModel(
      image: "assets/images/eren.jpg",
      quote:
          "If someone is willing to take my freedom, I won't hesitate to take theirs.",
      character: "- Eren Yeager"),
  DataModel(
      image: "assets/images/itachi.jpeg",
      quote:
          "You Are Weak. And You Are Weak Because You Don't Have Enough Hate.",
      character: "- Itachi Uchiha"),
  DataModel(
      image: "assets/images/sukuna.jpeg",
      quote: "Any Hierarchy Other Than Strength Is Boring",
      character: "- Sukuna"),
  DataModel(
      image: "assets/images/luffy.jpg",
      quote: "If you don't take risks, you can't create a future.",
      character: "Monkey D. Luffy"),
  DataModel(
      image: "assets/images/kakashi.jpeg",
      quote:
          "In society, the ones without many abilities tend to complain more.",
      character: "- Kakashi Hatake"),
  DataModel(
      image: "assets/images/ichigo.jpg",
      quote:
          "If Miracles Only Happen Once What Are They Called The Second Time?",
      character: "- Ichigo"),
];

List<DataModel> videoQuoteData = [
  DataModel(
      image: "assets/videos/eren.mp4",
      quote:
          "If someone is willing to take my freedom, I won't hesitate to take theirs.",
      character: "- Eren Yeager"),
  DataModel(
      image: "assets/videos/itachi.mp4",
      quote:
          "You Are Weak. And You Are Weak Because You Don't Have Enough Hate.",
      character: "- Itachi Uchiha"),
  DataModel(
      image: "assets/videos/sukuna.mp4",
      quote: "Any Hierarchy Other Than Strength Is Boring",
      character: "- Sukuna"),
  DataModel(
      image: "assets/videos/luffy.mp4",
      quote: "If you don't take risks, you can't create a future.",
      character: "- Monkey D. Luffy"),
  DataModel(
      image: "assets/videos/gojo.mp4",
      quote: "You’re Lucky If You Can Die A Normal Death...",
      character: "- Gojo Satoru"),
  DataModel(
      image: "assets/videos/ichigo.mp4",
      quote:
          "If Miracles Only Happen Once What Are They Called The Second Time?",
      character: "- Ichigo"),
];
