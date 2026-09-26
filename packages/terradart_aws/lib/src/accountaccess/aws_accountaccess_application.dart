// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_accountaccess_application`.
const Set<String> _awsAccountaccessApplicationSensitive = <String>{};

/// Typed helper for the `identity_source` block of
/// `aws_accountaccess_application` (derived from provider schema).
@immutable
final class AccountaccessApplicationIdentitySource {
  const AccountaccessApplicationIdentitySource({this.identityCenter});

  final List<AccountaccessApplicationIdentitySourceIdentityCenter>?
  identityCenter;

  Map<String, Object?> encode() => {
    if (identityCenter != null)
      'identity_center': [for (final e in identityCenter!) e.encode()],
  };
}

/// Typed helper for the `identity_source.identity_center` block of
/// `aws_accountaccess_application` (derived from provider schema).
@immutable
final class AccountaccessApplicationIdentitySourceIdentityCenter {
  const AccountaccessApplicationIdentitySourceIdentityCenter({
    required this.instanceArn,
  });

  final TfArg<String> instanceArn;

  Map<String, Object?> encode() => {'instance_arn': instanceArn.toTfJson()};
}

/// Factory wrapper for `aws_accountaccess_application`.
final class AwsAccountaccessApplication extends Resource {
  static const String tfType = 'aws_accountaccess_application';

  AwsAccountaccessApplication({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<AccountaccessApplicationIdentitySource>? identitySource,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (identitySource != null)
             'identity_source': TfArg.literal([
               for (final e in identitySource) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAccountaccessApplicationSensitive;

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');
}
