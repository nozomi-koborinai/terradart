import 'package:schemantic/schemantic.dart';

part 'schema.g.dart';

@Schema()
abstract class $LunchRequest {
  @Field(description: 'Area or station where the user wants to eat.')
  String get area;

  @Field(description: 'Current lunch mood, such as light, spicy, or warm.')
  String get mood;

  @Field(description: 'Expected budget in Japanese yen.')
  int get budgetYen;
}

@Schema()
abstract class $LunchSuggestion {
  String get name;
  String get reason;
  int get estimatedPriceYen;
}

@Schema()
abstract class $LunchResponse {
  String get message;
  List<$LunchSuggestion> get suggestions;
}
