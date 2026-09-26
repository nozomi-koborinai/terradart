// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cognito_user_pool_clients`.
const Set<String> _awsCognitoUserPoolClientsSensitive = <String>{};

/// Factory wrapper for `aws_cognito_user_pool_clients`.
final class DataAwsCognitoUserPoolClients extends Data {
  static const String tfType = 'aws_cognito_user_pool_clients';

  DataAwsCognitoUserPoolClients({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> userPoolId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'user_pool_id': userPoolId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoUserPoolClientsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_ids` attribute.
  TfRef<List<String>> get clientIds =>
      TfRef.attribute<List<String>>(this, 'client_ids');

  /// Reference to `client_names` attribute.
  TfRef<List<String>> get clientNames =>
      TfRef.attribute<List<String>>(this, 'client_names');
}
