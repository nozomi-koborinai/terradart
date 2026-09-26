// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String> keyType;

  final TfArg<String>? kmsKeyArn;

  Map<String, Object?> encode() => {
    'key_type': keyType.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrockagentcore_token_vault_cmk`.
final class AwsBedrockagentcoreTokenVaultCmk extends Resource {
  static const String tfType = 'aws_bedrockagentcore_token_vault_cmk';

  AwsBedrockagentcoreTokenVaultCmk({
    required super.localName,
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
           if (region != null) 'region': region,
           if (tokenVaultId != null) 'token_vault_id': tokenVaultId,
           if (kmsConfiguration != null)
             'kms_configuration': TfArg.literal([
               for (final e in kmsConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentcoreTokenVaultCmkSensitive;
}
