// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_directory_service_directory`.
const Set<String> _awsDirectoryServiceDirectorySensitive = <String>{};

/// Factory wrapper for `aws_directory_service_directory`.
final class DataAwsDirectoryServiceDirectory extends Data {
  static const String tfType = 'aws_directory_service_directory';

  DataAwsDirectoryServiceDirectory({
    required super.localName,
    required TfArg<String> directoryId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'directory_id': directoryId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDirectoryServiceDirectorySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_url` attribute.
  TfRef<String> get accessUrl => TfRef.attribute<String>(this, 'access_url');

  /// Reference to `alias` attribute.
  TfRef<String> get alias => TfRef.attribute<String>(this, 'alias');

  /// Reference to `connect_settings` attribute.
  TfRef<List<Map<String, Object?>>> get connectSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'connect_settings');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `dns_ip_addresses` attribute.
  TfRef<List<String>> get dnsIpAddresses =>
      TfRef.attribute<List<String>>(this, 'dns_ip_addresses');

  /// Reference to `edition` attribute.
  TfRef<String> get edition => TfRef.attribute<String>(this, 'edition');

  /// Reference to `enable_sso` attribute.
  TfRef<bool> get enableSso => TfRef.attribute<bool>(this, 'enable_sso');

  /// Reference to `radius_settings` attribute.
  TfRef<List<Map<String, Object?>>> get radiusSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'radius_settings');

  /// Reference to `security_group_id` attribute.
  TfRef<String> get securityGroupId =>
      TfRef.attribute<String>(this, 'security_group_id');

  /// Reference to `short_name` attribute.
  TfRef<String> get shortName => TfRef.attribute<String>(this, 'short_name');

  /// Reference to `size` attribute.
  TfRef<String> get size => TfRef.attribute<String>(this, 'size');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `vpc_settings` attribute.
  TfRef<List<Map<String, Object?>>> get vpcSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'vpc_settings');
}
