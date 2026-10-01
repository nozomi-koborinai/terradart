// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_secretsmanager_random_password`.
const Set<String> _awsSecretsmanagerRandomPasswordSensitive = <String>{};

/// Factory wrapper for `aws_secretsmanager_random_password`.
final class DataAwsSecretsmanagerRandomPassword extends Data {
  static const String tfType = 'aws_secretsmanager_random_password';

  DataAwsSecretsmanagerRandomPassword({
    required super.localName,
    TfArg<String>? excludeCharacters,
    TfArg<bool>? excludeLowercase,
    TfArg<bool>? excludeNumbers,
    TfArg<bool>? excludePunctuation,
    TfArg<bool>? excludeUppercase,
    TfArg<bool>? includeSpace,
    TfArg<num>? passwordLength,
    TfArg<String>? region,
    TfArg<bool>? requireEachIncludedType,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'exclude_characters': ?excludeCharacters,
           'exclude_lowercase': ?excludeLowercase,
           'exclude_numbers': ?excludeNumbers,
           'exclude_punctuation': ?excludePunctuation,
           'exclude_uppercase': ?excludeUppercase,
           'include_space': ?includeSpace,
           'password_length': ?passwordLength,
           'region': ?region,
           'require_each_included_type': ?requireEachIncludedType,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecretsmanagerRandomPasswordSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `random_password` attribute.
  TfRef<String> get randomPassword =>
      TfRef.attribute<String>(this, 'random_password');

  /// Reference to `exclude_characters` attribute.
  TfRef<String> get excludeCharacters =>
      TfRef.attribute<String>(this, 'exclude_characters');

  /// Reference to `exclude_lowercase` attribute.
  TfRef<bool> get excludeLowercase =>
      TfRef.attribute<bool>(this, 'exclude_lowercase');

  /// Reference to `exclude_numbers` attribute.
  TfRef<bool> get excludeNumbers =>
      TfRef.attribute<bool>(this, 'exclude_numbers');

  /// Reference to `exclude_punctuation` attribute.
  TfRef<bool> get excludePunctuation =>
      TfRef.attribute<bool>(this, 'exclude_punctuation');

  /// Reference to `exclude_uppercase` attribute.
  TfRef<bool> get excludeUppercase =>
      TfRef.attribute<bool>(this, 'exclude_uppercase');

  /// Reference to `include_space` attribute.
  TfRef<bool> get includeSpace => TfRef.attribute<bool>(this, 'include_space');

  /// Reference to `password_length` attribute.
  TfRef<num> get passwordLength =>
      TfRef.attribute<num>(this, 'password_length');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `require_each_included_type` attribute.
  TfRef<bool> get requireEachIncludedType =>
      TfRef.attribute<bool>(this, 'require_each_included_type');
}
