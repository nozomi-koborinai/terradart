// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_macie2_account`.
const Set<String> _awsMacie2AccountSensitive = <String>{};

/// Factory wrapper for `aws_macie2_account`.
final class AwsMacie2Account extends Resource {
  static const String tfType = 'aws_macie2_account';

  AwsMacie2Account({
    required super.localName,
    TfArg<String>? findingPublishingFrequency,
    TfArg<String>? region,
    TfArg<String>? status,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (findingPublishingFrequency != null)
             'finding_publishing_frequency': findingPublishingFrequency,
           if (region != null) 'region': region,
           if (status != null) 'status': status,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMacie2AccountSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `service_role` attribute.
  TfRef<String> get serviceRole =>
      TfRef.attribute<String>(this, 'service_role');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
