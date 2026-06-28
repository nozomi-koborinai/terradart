import 'package:schemantic/schemantic.dart';

part 'schema.g.dart';

@Schema()
abstract class $LunchRequest {
  @StringField(
    description: 'Area or station where the user wants to eat.',
    minLength: 1,
    maxLength: 40,
  )
  String get area;

  @StringField(
    description: 'Current lunch mood, such as light, spicy, or warm.',
    minLength: 1,
    maxLength: 40,
  )
  String get mood;

  @IntegerField(
    description: 'Expected budget in Japanese yen.',
    minimum: 300,
    maximum: 10000,
  )
  int get budgetYen;
}

@Schema()
abstract class $LunchSuggestion {
  @StringField(minLength: 1, maxLength: 80)
  String get name;

  @StringField(minLength: 1, maxLength: 240)
  String get reason;

  @IntegerField(minimum: 0, maximum: 50000)
  int get estimatedPriceYen;
}

@Schema()
abstract class $LunchResponse {
  @StringField(minLength: 1, maxLength: 400)
  String get message;

  List<$LunchSuggestion> get suggestions;
}
