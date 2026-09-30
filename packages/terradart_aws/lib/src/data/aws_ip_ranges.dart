// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ip_ranges`.
const Set<String> _awsIpRangesSensitive = <String>{};

/// Factory wrapper for `aws_ip_ranges`.
final class DataAwsIpRanges extends Data {
  static const String tfType = 'aws_ip_ranges';

  DataAwsIpRanges({
    required super.localName,
    TfArg<List<String>>? regions,
    required TfArg<List<String>> services,
    TfArg<String>? url,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'regions': ?regions, 'services': services, 'url': ?url},
       );

  @override
  Set<String> get sensitiveFields => _awsIpRangesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cidr_blocks` attribute.
  TfRef<List<String>> get cidrBlocks =>
      TfRef.attribute<List<String>>(this, 'cidr_blocks');

  /// Reference to `create_date` attribute.
  TfRef<String> get createDate => TfRef.attribute<String>(this, 'create_date');

  /// Reference to `ipv6_cidr_blocks` attribute.
  TfRef<List<String>> get ipv6CidrBlocks =>
      TfRef.attribute<List<String>>(this, 'ipv6_cidr_blocks');

  /// Reference to `sync_token` attribute.
  TfRef<num> get syncToken => TfRef.attribute<num>(this, 'sync_token');

  /// Reference to `regions` attribute.
  TfRef<List<String>> get regionsRef =>
      TfRef.attribute<List<String>>(this, 'regions');

  /// Reference to `services` attribute.
  TfRef<List<String>> get servicesRef =>
      TfRef.attribute<List<String>>(this, 'services');

  /// Reference to `url` attribute.
  TfRef<String> get urlRef => TfRef.attribute<String>(this, 'url');
}
