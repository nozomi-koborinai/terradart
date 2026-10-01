// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_verifiedpermissions_policy_store`.
const Set<String> _awsVerifiedpermissionsPolicyStoreSensitive = <String>{};

/// Verifiedpermissions Policy Store Deletion enum for `deletion_protection`.
extension type const VerifiedpermissionsPolicyStoreDeletionProtection._(
  TfArg<String> _
) implements TfArg<String> {
  VerifiedpermissionsPolicyStoreDeletionProtection.variable(String name)
    : this._(TfArg.variable(name));
  VerifiedpermissionsPolicyStoreDeletionProtection.expression(String template)
    : this._(TfArg.expression(template));
  const VerifiedpermissionsPolicyStoreDeletionProtection.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = VerifiedpermissionsPolicyStoreDeletionProtection._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = VerifiedpermissionsPolicyStoreDeletionProtection._(
    TfArgLiteral('DISABLED'),
  );

  static const List<VerifiedpermissionsPolicyStoreDeletionProtection> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `validation_settings` block of
/// `aws_verifiedpermissions_policy_store` (derived from provider schema).
@immutable
final class VerifiedpermissionsPolicyStoreValidationSettings {
  const VerifiedpermissionsPolicyStoreValidationSettings({required this.mode});

  final VerifiedpermissionsPolicyStoreMode mode;

  @internal
  Map<String, Object?> encode() => {'mode': mode.toTfJson()};
}

/// `mode` — derived from the provider schema description.
extension type const VerifiedpermissionsPolicyStoreMode._(TfArg<String> _)
    implements TfArg<String> {
  VerifiedpermissionsPolicyStoreMode.variable(String name)
    : this._(TfArg.variable(name));
  VerifiedpermissionsPolicyStoreMode.expression(String template)
    : this._(TfArg.expression(template));
  const VerifiedpermissionsPolicyStoreMode.arg(TfArg<String> arg) : this._(arg);

  static const off = VerifiedpermissionsPolicyStoreMode._(TfArgLiteral('OFF'));
  static const strict = VerifiedpermissionsPolicyStoreMode._(
    TfArgLiteral('STRICT'),
  );

  static const List<VerifiedpermissionsPolicyStoreMode> values = [off, strict];
}

/// Factory wrapper for `aws_verifiedpermissions_policy_store`.
final class AwsVerifiedpermissionsPolicyStore extends Resource {
  static const String tfType = 'aws_verifiedpermissions_policy_store';

  AwsVerifiedpermissionsPolicyStore(
    super.localName, {
    VerifiedpermissionsPolicyStoreDeletionProtection? deletionProtection,
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
           'deletion_protection': ?deletionProtection,
           'description': ?description,
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVerifiedpermissionsPolicyStore>`.
  RefTo<AwsVerifiedpermissionsPolicyStore> get ref => RefTo.of(this);

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

  /// Reference to `deletion_protection` attribute.
  TfRef<String> get deletionProtection =>
      TfRef.attribute<String>(this, 'deletion_protection');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
