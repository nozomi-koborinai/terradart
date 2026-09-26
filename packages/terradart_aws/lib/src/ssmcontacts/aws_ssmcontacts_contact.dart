// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssmcontacts_contact`.
const Set<String> _awsSsmcontactsContactSensitive = <String>{};

/// Factory wrapper for `aws_ssmcontacts_contact`.
final class AwsSsmcontactsContact extends Resource {
  static const String tfType = 'aws_ssmcontacts_contact';

  AwsSsmcontactsContact({
    required super.localName,
    required TfArg<String> alias,
    TfArg<String>? displayName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'alias': alias,
           if (displayName != null) 'display_name': displayName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmcontactsContactSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
