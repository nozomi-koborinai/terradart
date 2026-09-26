// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_verifiedpermissions_policy_store`.
const Set<String> _awsVerifiedpermissionsPolicyStoreSensitive = <String>{};

/// Typed helper for the `validation_settings` block of
/// `aws_verifiedpermissions_policy_store` (derived from provider schema).
@immutable
final class VerifiedpermissionsPolicyStoreValidationSettings {
  const VerifiedpermissionsPolicyStoreValidationSettings({required this.mode});

  final TfArg<String> mode;

  Map<String, Object?> encode() => {'mode': mode.toTfJson()};
}

/// Factory wrapper for `aws_verifiedpermissions_policy_store`.
final class AwsVerifiedpermissionsPolicyStore extends Resource {
  static const String tfType = 'aws_verifiedpermissions_policy_store';

  AwsVerifiedpermissionsPolicyStore({
    required super.localName,
    TfArg<String>? deletionProtection,
    TfArg<String>? description,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<VerifiedpermissionsPolicyStoreValidationSettings>? validationSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (description != null) 'description': description,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (validationSettings != null)
             'validation_settings': TfArg.literal([
               for (final e in validationSettings) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVerifiedpermissionsPolicyStoreSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `policy_store_id` attribute.
  TfRef<String> get policyStoreId =>
      TfRef.attribute<String>(this, 'policy_store_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
