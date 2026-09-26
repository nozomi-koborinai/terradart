// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssmcontacts_plan`.
const Set<String> _awsSsmcontactsPlanSensitive = <String>{};

/// Factory wrapper for `aws_ssmcontacts_plan`.
final class DataAwsSsmcontactsPlan extends Data {
  static const String tfType = 'aws_ssmcontacts_plan';

  DataAwsSsmcontactsPlan({
    required super.localName,
    required TfArg<String> contactId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'contact_id': contactId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmcontactsPlanSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `stage` attribute.
  TfRef<List<Map<String, Object?>>> get stage =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'stage');
}
