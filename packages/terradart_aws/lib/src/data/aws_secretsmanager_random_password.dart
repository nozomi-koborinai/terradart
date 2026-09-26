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
           if (excludeCharacters != null)
             'exclude_characters': excludeCharacters,
           if (excludeLowercase != null) 'exclude_lowercase': excludeLowercase,
           if (excludeNumbers != null) 'exclude_numbers': excludeNumbers,
           if (excludePunctuation != null)
             'exclude_punctuation': excludePunctuation,
           if (excludeUppercase != null) 'exclude_uppercase': excludeUppercase,
           if (includeSpace != null) 'include_space': includeSpace,
           if (passwordLength != null) 'password_length': passwordLength,
           if (region != null) 'region': region,
           if (requireEachIncludedType != null)
             'require_each_included_type': requireEachIncludedType,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecretsmanagerRandomPasswordSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `random_password` attribute.
  TfRef<String> get randomPassword =>
      TfRef.attribute<String>(this, 'random_password');
}
