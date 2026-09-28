// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearchserverless_security_config`.
const Set<String> _awsOpensearchserverlessSecurityConfigSensitive = <String>{};

/// Opensearchserverless Security Config enum for `type`.
enum OpensearchserverlessSecurityConfigType implements TerraformEnum {
  saml('saml'),
  iamidentitycenter('iamidentitycenter'),
  iamfederation('iamfederation');

  const OpensearchserverlessSecurityConfigType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `iam_federation_options`, `iam_identity_center_options`, `saml_options` on `aws_opensearchserverless_security_config`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class OpensearchserverlessSecurityConfigIamFederationOptionsOrIamIdentityCenterOptionsOrSamlOptions {
  const OpensearchserverlessSecurityConfigIamFederationOptionsOrIamIdentityCenterOptionsOrSamlOptions();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `iam_federation_options` (one of the [OpensearchserverlessSecurityConfigIamFederationOptionsOrIamIdentityCenterOptionsOrSamlOptions] choices).
final class OpensearchserverlessSecurityConfigIamFederationOptionsOption
    extends
        OpensearchserverlessSecurityConfigIamFederationOptionsOrIamIdentityCenterOptionsOrSamlOptions {
  const OpensearchserverlessSecurityConfigIamFederationOptionsOption({
    required this.iamFederationOptions,
  });

  final List<OpensearchserverlessSecurityConfigIamFederationOptions>
  iamFederationOptions;

  @override
  String get blockKey => 'iam_federation_options';

  @override
  Map<String, Object?> encode() => {
    'iam_federation_options': [
      for (final e in iamFederationOptions) e.encode(),
    ],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'iam_federation_options': TfArg.literal([
      for (final e in iamFederationOptions) e.encode(),
    ]),
  };
}

/// Sets `iam_identity_center_options` (one of the [OpensearchserverlessSecurityConfigIamFederationOptionsOrIamIdentityCenterOptionsOrSamlOptions] choices).
final class OpensearchserverlessSecurityConfigIamIdentityCenterOptionsOption
    extends
        OpensearchserverlessSecurityConfigIamFederationOptionsOrIamIdentityCenterOptionsOrSamlOptions {
  const OpensearchserverlessSecurityConfigIamIdentityCenterOptionsOption({
    required this.iamIdentityCenterOptions,
  });

  final List<OpensearchserverlessSecurityConfigIamIdentityCenterOptions>
  iamIdentityCenterOptions;

  @override
  String get blockKey => 'iam_identity_center_options';

  @override
  Map<String, Object?> encode() => {
    'iam_identity_center_options': [
      for (final e in iamIdentityCenterOptions) e.encode(),
    ],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'iam_identity_center_options': TfArg.literal([
      for (final e in iamIdentityCenterOptions) e.encode(),
    ]),
  };
}

/// Sets `saml_options` (one of the [OpensearchserverlessSecurityConfigIamFederationOptionsOrIamIdentityCenterOptionsOrSamlOptions] choices).
final class OpensearchserverlessSecurityConfigSamlOptionsOption
    extends
        OpensearchserverlessSecurityConfigIamFederationOptionsOrIamIdentityCenterOptionsOrSamlOptions {
  const OpensearchserverlessSecurityConfigSamlOptionsOption({
    required this.samlOptions,
  });

  final List<OpensearchserverlessSecurityConfigSamlOptions> samlOptions;

  @override
  String get blockKey => 'saml_options';

  @override
  Map<String, Object?> encode() => {
    'saml_options': [for (final e in samlOptions) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'saml_options': TfArg.literal([for (final e in samlOptions) e.encode()]),
  };
}

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

  final TfArg<
    OpensearchserverlessSecurityConfigIamIdentityCenterOptionsGroupAttribute
  >?
  groupAttribute;

  final TfArg<String> instanceArn;

  final TfArg<
    OpensearchserverlessSecurityConfigIamIdentityCenterOptionsUserAttribute
  >?
  userAttribute;

  Map<String, Object?> encode() => {
    if (groupAttribute != null) 'group_attribute': groupAttribute!.toTfJson(),
    'instance_arn': instanceArn.toTfJson(),
    if (userAttribute != null) 'user_attribute': userAttribute!.toTfJson(),
  };
}

/// `group_attribute` — derived from the provider schema description.
enum OpensearchserverlessSecurityConfigIamIdentityCenterOptionsGroupAttribute
    implements TerraformEnum {
  groupid('GroupId'),
  groupname('GroupName');

  const OpensearchserverlessSecurityConfigIamIdentityCenterOptionsGroupAttribute(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `user_attribute` — derived from the provider schema description.
enum OpensearchserverlessSecurityConfigIamIdentityCenterOptionsUserAttribute
    implements TerraformEnum {
  userid('UserId'),
  username('UserName'),
  email('Email');

  const OpensearchserverlessSecurityConfigIamIdentityCenterOptionsUserAttribute(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    required TfArg<OpensearchserverlessSecurityConfigType> type,
    required OpensearchserverlessSecurityConfigIamFederationOptionsOrIamIdentityCenterOptionsOrSamlOptions
    iamFederationOptionsOrIamIdentityCenterOptionsOrSamlOptions,
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
           ...iamFederationOptionsOrIamIdentityCenterOptionsOrSamlOptions
               .argMap,
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
