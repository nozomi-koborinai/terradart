// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearchserverless_security_config`.
const Set<String> _awsOpensearchserverlessSecurityConfigSensitive = <String>{};

/// Opensearchserverless Security Config enum for `type`.
extension type const OpensearchserverlessSecurityConfigType._(TfArg<String> _)
    implements TfArg<String> {
  OpensearchserverlessSecurityConfigType.variable(String name)
    : this._(TfArg.variable(name));
  OpensearchserverlessSecurityConfigType.expression(String template)
    : this._(TfArg.expression(template));
  const OpensearchserverlessSecurityConfigType.arg(TfArg<String> arg)
    : this._(arg);

  static const saml = OpensearchserverlessSecurityConfigType._(
    TfArgLiteral('saml'),
  );
  static const iamidentitycenter = OpensearchserverlessSecurityConfigType._(
    TfArgLiteral('iamidentitycenter'),
  );
  static const iamfederation = OpensearchserverlessSecurityConfigType._(
    TfArgLiteral('iamfederation'),
  );

  static const List<OpensearchserverlessSecurityConfigType> values = [
    saml,
    iamidentitycenter,
    iamfederation,
  ];
}

/// Exactly one of `iam_federation_options`, `iam_identity_center_options`, `saml_options` on `aws_opensearchserverless_security_config`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.iamFederationOptions(...)`.
sealed class OpensearchserverlessSecurityConfigOptions {
  const OpensearchserverlessSecurityConfigOptions();

  /// Sets `iam_federation_options`.
  const factory OpensearchserverlessSecurityConfigOptions.iamFederationOptions(
    List<OpensearchserverlessSecurityConfigIamFederationOptions>
    iamFederationOptions,
  ) = OpensearchserverlessSecurityConfigIamFederationOptionsChoice;

  /// Sets `iam_identity_center_options`.
  const factory OpensearchserverlessSecurityConfigOptions.iamIdentityCenterOptions(
    List<OpensearchserverlessSecurityConfigIamIdentityCenterOptions>
    iamIdentityCenterOptions,
  ) = OpensearchserverlessSecurityConfigIamIdentityCenterOptionsChoice;

  /// Sets `saml_options`.
  const factory OpensearchserverlessSecurityConfigOptions.samlOptions(
    List<OpensearchserverlessSecurityConfigSamlOptions> samlOptions,
  ) = OpensearchserverlessSecurityConfigSamlOptionsChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [OpensearchserverlessSecurityConfigOptions.iamFederationOptions] choice: sets `iam_federation_options`.
final class OpensearchserverlessSecurityConfigIamFederationOptionsChoice
    extends OpensearchserverlessSecurityConfigOptions {
  const OpensearchserverlessSecurityConfigIamFederationOptionsChoice(
    this.iamFederationOptions,
  );

  final List<OpensearchserverlessSecurityConfigIamFederationOptions>
  iamFederationOptions;

  @internal
  @override
  String get blockKey => 'iam_federation_options';

  @internal
  @override
  Map<String, Object?> encode() => {
    'iam_federation_options': [
      for (final e in iamFederationOptions) e.encode(),
    ],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'iam_federation_options': TfArg.literal([
      for (final e in iamFederationOptions) e.encode(),
    ]),
  };
}

/// The [OpensearchserverlessSecurityConfigOptions.iamIdentityCenterOptions] choice: sets `iam_identity_center_options`.
final class OpensearchserverlessSecurityConfigIamIdentityCenterOptionsChoice
    extends OpensearchserverlessSecurityConfigOptions {
  const OpensearchserverlessSecurityConfigIamIdentityCenterOptionsChoice(
    this.iamIdentityCenterOptions,
  );

  final List<OpensearchserverlessSecurityConfigIamIdentityCenterOptions>
  iamIdentityCenterOptions;

  @internal
  @override
  String get blockKey => 'iam_identity_center_options';

  @internal
  @override
  Map<String, Object?> encode() => {
    'iam_identity_center_options': [
      for (final e in iamIdentityCenterOptions) e.encode(),
    ],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'iam_identity_center_options': TfArg.literal([
      for (final e in iamIdentityCenterOptions) e.encode(),
    ]),
  };
}

/// The [OpensearchserverlessSecurityConfigOptions.samlOptions] choice: sets `saml_options`.
final class OpensearchserverlessSecurityConfigSamlOptionsChoice
    extends OpensearchserverlessSecurityConfigOptions {
  const OpensearchserverlessSecurityConfigSamlOptionsChoice(this.samlOptions);

  final List<OpensearchserverlessSecurityConfigSamlOptions> samlOptions;

  @internal
  @override
  String get blockKey => 'saml_options';

  @internal
  @override
  Map<String, Object?> encode() => {
    'saml_options': [for (final e in samlOptions) e.encode()],
  };

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'group_attribute': ?groupAttribute?.toTfJson(),
    'user_attribute': ?userAttribute?.toTfJson(),
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

  final OpensearchserverlessSecurityConfigGroupAttribute? groupAttribute;

  final TfArg<String> instanceArn;

  final OpensearchserverlessSecurityConfigUserAttribute? userAttribute;

  @internal
  Map<String, Object?> encode() => {
    'group_attribute': ?groupAttribute?.toTfJson(),
    'instance_arn': instanceArn.toTfJson(),
    'user_attribute': ?userAttribute?.toTfJson(),
  };
}

/// `group_attribute` — derived from the provider schema description.
extension type const OpensearchserverlessSecurityConfigGroupAttribute._(
  TfArg<String> _
) implements TfArg<String> {
  OpensearchserverlessSecurityConfigGroupAttribute.variable(String name)
    : this._(TfArg.variable(name));
  OpensearchserverlessSecurityConfigGroupAttribute.expression(String template)
    : this._(TfArg.expression(template));
  const OpensearchserverlessSecurityConfigGroupAttribute.arg(TfArg<String> arg)
    : this._(arg);

  static const groupid = OpensearchserverlessSecurityConfigGroupAttribute._(
    TfArgLiteral('GroupId'),
  );
  static const groupname = OpensearchserverlessSecurityConfigGroupAttribute._(
    TfArgLiteral('GroupName'),
  );

  static const List<OpensearchserverlessSecurityConfigGroupAttribute> values = [
    groupid,
    groupname,
  ];
}

/// `user_attribute` — derived from the provider schema description.
extension type const OpensearchserverlessSecurityConfigUserAttribute._(
  TfArg<String> _
) implements TfArg<String> {
  OpensearchserverlessSecurityConfigUserAttribute.variable(String name)
    : this._(TfArg.variable(name));
  OpensearchserverlessSecurityConfigUserAttribute.expression(String template)
    : this._(TfArg.expression(template));
  const OpensearchserverlessSecurityConfigUserAttribute.arg(TfArg<String> arg)
    : this._(arg);

  static const userid = OpensearchserverlessSecurityConfigUserAttribute._(
    TfArgLiteral('UserId'),
  );
  static const username = OpensearchserverlessSecurityConfigUserAttribute._(
    TfArgLiteral('UserName'),
  );
  static const email = OpensearchserverlessSecurityConfigUserAttribute._(
    TfArgLiteral('Email'),
  );

  static const List<OpensearchserverlessSecurityConfigUserAttribute> values = [
    userid,
    username,
    email,
  ];
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

  @internal
  Map<String, Object?> encode() => {
    'group_attribute': ?groupAttribute?.toTfJson(),
    'metadata': metadata.toTfJson(),
    'session_timeout': ?sessionTimeout?.toTfJson(),
    'user_attribute': ?userAttribute?.toTfJson(),
  };
}

/// Factory wrapper for `aws_opensearchserverless_security_config`.
final class AwsOpensearchserverlessSecurityConfig extends Resource {
  static const String tfType = 'aws_opensearchserverless_security_config';

  AwsOpensearchserverlessSecurityConfig(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    required OpensearchserverlessSecurityConfigType type,
    required OpensearchserverlessSecurityConfigOptions options,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'region': ?region,
           'type': type,
           ...options.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsOpensearchserverlessSecurityConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOpensearchserverlessSecurityConfig>`.
  RefTo<AwsOpensearchserverlessSecurityConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `config_version` attribute.
  TfRef<String> get configVersion =>
      TfRef.attribute<String>(this, 'config_version');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
