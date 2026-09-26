// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kms_alias`.
const Set<String> _awsKmsAliasSensitive = <String>{};

/// Factory wrapper for `aws_kms_alias`.
final class DataAwsKmsAlias extends Data {
  static const String tfType = 'aws_kms_alias';

  DataAwsKmsAlias({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsKmsAliasSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `target_key_arn` attribute.
  TfRef<String> get targetKeyArn =>
      TfRef.attribute<String>(this, 'target_key_arn');

  /// Reference to `target_key_id` attribute.
  TfRef<String> get targetKeyId =>
      TfRef.attribute<String>(this, 'target_key_id');
}
