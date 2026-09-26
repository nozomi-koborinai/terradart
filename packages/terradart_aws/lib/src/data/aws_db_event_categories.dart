// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_db_event_categories`.
const Set<String> _awsDbEventCategoriesSensitive = <String>{};

/// Factory wrapper for `aws_db_event_categories`.
final class DataAwsDbEventCategories extends Data {
  static const String tfType = 'aws_db_event_categories';

  DataAwsDbEventCategories({
    required super.localName,
    TfArg<String>? region,
    TfArg<String>? sourceType,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (sourceType != null) 'source_type': sourceType,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbEventCategoriesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `event_categories` attribute.
  TfRef<List<String>> get eventCategories =>
      TfRef.attribute<List<String>>(this, 'event_categories');
}
