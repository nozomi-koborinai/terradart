// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearchserverless_security_config`.
const Set<String> _awsOpensearchserverlessSecurityConfigSensitive = <String>{};

/// Typed helper for the `iam_federation_options` block of
/// `aws_opensearchserverless_security_config` (derived from provider schema).
@immutable
final class DataOpensearchserverlessSecurityConfigIamFederationOptions {
  const DataOpensearchserverlessSecurityConfigIamFederationOptions();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `iam_identity_center_options` block of
/// `aws_opensearchserverless_security_config` (derived from provider schema).
@immutable
final class DataOpensearchserverlessSecurityConfigIamIdentityCenterOptions {
  const DataOpensearchserverlessSecurityConfigIamIdentityCenterOptions();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `saml_options` block of
/// `aws_opensearchserverless_security_config` (derived from provider schema).
@immutable
final class DataOpensearchserverlessSecurityConfigSamlOptions {
  const DataOpensearchserverlessSecurityConfigSamlOptions();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_opensearchserverless_security_config`.
final class DataAwsOpensearchserverlessSecurityConfig extends Data {
  static const String tfType = 'aws_opensearchserverless_security_config';

  DataAwsOpensearchserverlessSecurityConfig({
    required super.localName,
    required TfArg<String> id,
    TfArg<String>? region,
    List<DataOpensearchserverlessSecurityConfigIamFederationOptions>?
    iamFederationOptions,
    List<DataOpensearchserverlessSecurityConfigIamIdentityCenterOptions>?
    iamIdentityCenterOptions,
    List<DataOpensearchserverlessSecurityConfigSamlOptions>? samlOptions,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'id': id,
           if (region != null) 'region': region,
           if (iamFederationOptions != null)
             'iam_federation_options': TfArg.literal([
               for (final e in iamFederationOptions) e.encode(),
             ]),
           if (iamIdentityCenterOptions != null)
             'iam_identity_center_options': TfArg.literal([
               for (final e in iamIdentityCenterOptions) e.encode(),
             ]),
           if (samlOptions != null)
             'saml_options': TfArg.literal([
               for (final e in samlOptions) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsOpensearchserverlessSecurityConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `config_version` attribute.
  TfRef<String> get configVersion =>
      TfRef.attribute<String>(this, 'config_version');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `last_modified_date` attribute.
  TfRef<String> get lastModifiedDate =>
      TfRef.attribute<String>(this, 'last_modified_date');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
