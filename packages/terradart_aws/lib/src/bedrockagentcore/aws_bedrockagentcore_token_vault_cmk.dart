// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_bedrockagentcore_token_vault_cmk`.
const Set<String> _awsBedrockagentcoreTokenVaultCmkSensitive = <String>{};

/// Typed helper for the `kms_configuration` block of
/// `aws_bedrockagentcore_token_vault_cmk` (derived from provider schema).
@immutable
final class BedrockagentcoreTokenVaultCmkKmsConfiguration {
  const BedrockagentcoreTokenVaultCmkKmsConfiguration({
    required this.keyType,
    this.kmsKeyArn,
  });

  final BedrockagentcoreTokenVaultCmkKeyType keyType;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  @internal
  Map<String, Object?> encode() => {
    'key_type': keyType.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
  };
}

/// `key_type` — derived from the provider schema description.
extension type const BedrockagentcoreTokenVaultCmkKeyType._(TfArg<String> _)
    implements TfArg<String> {
  BedrockagentcoreTokenVaultCmkKeyType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentcoreTokenVaultCmkKeyType.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentcoreTokenVaultCmkKeyType.arg(TfArg<String> arg)
    : this._(arg);

  static const customermanagedkey = BedrockagentcoreTokenVaultCmkKeyType._(
    TfArgLiteral('CustomerManagedKey'),
  );
  static const servicemanagedkey = BedrockagentcoreTokenVaultCmkKeyType._(
    TfArgLiteral('ServiceManagedKey'),
  );

  static const List<BedrockagentcoreTokenVaultCmkKeyType> values = [
    customermanagedkey,
    servicemanagedkey,
  ];
}

/// Factory wrapper for `aws_bedrockagentcore_token_vault_cmk`.
final class AwsBedrockagentcoreTokenVaultCmk extends Resource {
  static const String tfType = 'aws_bedrockagentcore_token_vault_cmk';

  AwsBedrockagentcoreTokenVaultCmk(
    super.localName, {
    TfArg<String>? region,
    TfArg<String>? tokenVaultId,
    List<BedrockagentcoreTokenVaultCmkKmsConfiguration>? kmsConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'token_vault_id': ?tokenVaultId,
           if (kmsConfiguration != null)
             'kms_configuration': TfArg.literal([
               for (final e in kmsConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentcoreTokenVaultCmkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentcoreTokenVaultCmk>`.
  RefTo<AwsBedrockagentcoreTokenVaultCmk> get ref => RefTo.of(this);

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `token_vault_id` attribute.
  TfRef<String> get tokenVaultId =>
      TfRef.attribute<String>(this, 'token_vault_id');
}
