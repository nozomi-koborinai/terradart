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
final class OpensearchserverlessSecurityConfigIamFederationOptions {
  const OpensearchserverlessSecurityConfigIamFederationOptions({
    this.groupAttribute,
    this.userAttribute,
  });

  final TfArg<String>? groupAttribute;

  final TfArg<String>? userAttribute;

  Map<String, Object?> encode() => {
    if (groupAttribute != null) 'group_attribute': groupAttribute!.toTfJson(),
    if (userAttribute != null) 'user_attribute': userAttribute!.toTfJson(),
  };
}

/// Typed helper for the `iam_identity_center_options` block of
/// `aws_opensearchserverless_security_config` (derived from provider schema).
@immutable
final class OpensearchserverlessSecurityConfigIamIdentityCenterOptions {
  const OpensearchserverlessSecurityConfigIamIdentityCenterOptions({
    this.groupAttribute,
    required this.instanceArn,
    this.userAttribute,
  });

  final TfArg<String>? groupAttribute;

  final TfArg<String> instanceArn;

  final TfArg<String>? userAttribute;

  Map<String, Object?> encode() => {
    if (groupAttribute != null) 'group_attribute': groupAttribute!.toTfJson(),
    'instance_arn': instanceArn.toTfJson(),
    if (userAttribute != null) 'user_attribute': userAttribute!.toTfJson(),
  };
}

/// Typed helper for the `saml_options` block of
/// `aws_opensearchserverless_security_config` (derived from provider schema).
@immutable
final class OpensearchserverlessSecurityConfigSamlOptions {
  const OpensearchserverlessSecurityConfigSamlOptions({
    this.groupAttribute,
    required this.metadata,
    this.sessionTimeout,
    this.userAttribute,
  });

  final TfArg<String>? groupAttribute;

  final TfArg<String> metadata;

  final TfArg<num>? sessionTimeout;

  final TfArg<String>? userAttribute;

  Map<String, Object?> encode() => {
    if (groupAttribute != null) 'group_attribute': groupAttribute!.toTfJson(),
    'metadata': metadata.toTfJson(),
    if (sessionTimeout != null) 'session_timeout': sessionTimeout!.toTfJson(),
    if (userAttribute != null) 'user_attribute': userAttribute!.toTfJson(),
  };
}

/// Factory wrapper for `aws_opensearchserverless_security_config`.
final class AwsOpensearchserverlessSecurityConfig extends Resource {
  static const String tfType = 'aws_opensearchserverless_security_config';

  AwsOpensearchserverlessSecurityConfig({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> type,
    List<OpensearchserverlessSecurityConfigIamFederationOptions>?
    iamFederationOptions,
    List<OpensearchserverlessSecurityConfigIamIdentityCenterOptions>?
    iamIdentityCenterOptions,
    List<OpensearchserverlessSecurityConfigSamlOptions>? samlOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           'type': type,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `config_version` attribute.
  TfRef<String> get configVersion =>
      TfRef.attribute<String>(this, 'config_version');
}
