import 'package:flutter_application_1/models/life_path_page_model.dart';

List<LifePathModel> getLifePath() {
  List<LifePathModel> lifePath = [];

  LifePathModel lifePathModel =
      LifePathModel(title: "Description", subTitle: "This Number is regarded as mysterious and spiritual, ruled by the planet Ketu, and is associated with creativity and intuition. It is also an unfortunate number, indicating moodiness and anxiety issuesad this people can be great healers, teachers, and spiritual gurus and are advised to wear brown or green.");
  LifePathModel lifePathModel2 =
      LifePathModel(title: "Positive Sides", subTitle: "They have a various good qualities of Ketu. Natives who belong to this number are creative in nature, spiritual and religious and these people are very much into spirituality and meditation and they are not sociable. They like to be isolated as this is regarded as the number of mysteries.");
  LifePathModel lifePathModel3 =
      LifePathModel(title: "Negative Sides", subTitle: "This in Numerology: Negative Personality Trait and CharacteristicsThe natives belong this number are Moody (having mood swings). This number represents laziness. They have an anxiety issues all the time as they easily catch another person's energy. Negativity affect them often.");
  LifePathModel lifePathModel4 =
      LifePathModel(title: "Profession", subTitle: "They might be drawn to careers in and around innovation, research, engineering, technology, psychology, spirituality, teaching, creativity, digital invention, strategy, and journalism. This number possess a natural instinct for untangling big problems and seeking answers to life's big questions.");
  LifePathModel lifePathModel5 =
      LifePathModel(title: "Finance", subTitle: "A business with a name numerology of this number may be well-suited for those who value self-reflection and seek a deeper understanding of the world. A business with a name numerology of this number may be well-suited for industries that value introspection and spirituality, such as wellness or personal development.");
  LifePathModel lifePathMode6 =
      LifePathModel(title: "Relationship", subTitle: "On the plus side, This numbers are wise, curious, and philosophical. They make calm, compassionate and interested partners with strong ambition and abilities. There will be no shortage of deep and meaningful conversation with them. That said, this numbers live in their own mind a great deal.");
  LifePathModel lifePathMode7 =
      LifePathModel(title: "Health", subTitle: "This is regarded as mysterious and spiritual, ruled by the planet Ketu, and is associated with creativity and intuition. It is also an unfortunate number, indicating moodiness and anxiety issues. This people can be great healers, teachers, and spiritual gurus and are advised to wear brown or green.");

  lifePath.addAll([
    lifePathModel,
    lifePathModel2,
    lifePathModel3,
    lifePathModel4,
    lifePathModel5,
    lifePathMode6,
    lifePathMode7
  ]);
  return lifePath;
}
