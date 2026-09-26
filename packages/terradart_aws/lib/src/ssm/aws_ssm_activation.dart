// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_activation`.
const Set<String> _awsSsmActivationSensitive = <String>{};

/// Factory wrapper for `aws_ssm_activation`.
final class AwsSsmActivation extends Resource {
  static const String tfType = 'aws_ssm_activation';

  AwsSsmActivation({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? expirationDate,
    required TfArg<String> iamRole,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<num>? registrationLimit,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (expirationDate != null) 'expiration_date': expirationDate,
           'iam_role': iamRole,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (registrationLimit != null)
             'registration_limit': registrationLimit,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmActivationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `activation_code` attribute.
  TfRef<String> get activationCode =>
      TfRef.attribute<String>(this, 'activation_code');

  /// Reference to `expired` attribute.
  TfRef<bool> get expired => TfRef.attribute<bool>(this, 'expired');

  /// Reference to `registration_count` attribute.
  TfRef<num> get registrationCount =>
      TfRef.attribute<num>(this, 'registration_count');
}
