// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cognito_resource_server`.
const Set<String> _awsCognitoResourceServerSensitive = <String>{};

/// Typed helper for the `scope` block of
/// `aws_cognito_resource_server` (derived from provider schema).
@immutable
final class CognitoResourceServerScope {
  const CognitoResourceServerScope({
    required this.scopeDescription,
    required this.scopeName,
  });

  final TfArg<String> scopeDescription;

  final TfArg<String> scopeName;

  Map<String, Object?> encode() => {
    'scope_description': scopeDescription.toTfJson(),
    'scope_name': scopeName.toTfJson(),
  };
}

/// Factory wrapper for `aws_cognito_resource_server`.
final class AwsCognitoResourceServer extends Resource {
  static const String tfType = 'aws_cognito_resource_server';

  AwsCognitoResourceServer({
    required super.localName,
    required TfArg<String> identifier,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> userPoolId,
    List<CognitoResourceServerScope>? scope,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'identifier': identifier,
           'name': name,
           'region': ?region,
           'user_pool_id': userPoolId,
           if (scope != null)
             'scope': TfArg.literal([for (final e in scope) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoResourceServerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCognitoResourceServer>`.
  RefTo<AwsCognitoResourceServer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `scope_identifiers` attribute.
  TfRef<List<String>> get scopeIdentifiers =>
      TfRef.attribute<List<String>>(this, 'scope_identifiers');

  /// Reference to `identifier` attribute.
  TfRef<String> get identifier => TfRef.attribute<String>(this, 'identifier');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `user_pool_id` attribute.
  TfRef<String> get userPoolId => TfRef.attribute<String>(this, 'user_pool_id');
}
