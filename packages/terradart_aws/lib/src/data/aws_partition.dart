// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_partition`.
const Set<String> _awsPartitionSensitive = <String>{};

/// Factory wrapper for `aws_partition`.
final class DataAwsPartition extends Data {
  static const String tfType = 'aws_partition';

  DataAwsPartition({required super.localName, super.provider, super.timeouts})
    : super(terraformType: tfType, argMap: {});

  @override
  Set<String> get sensitiveFields => _awsPartitionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dns_suffix` attribute.
  TfRef<String> get dnsSuffix => TfRef.attribute<String>(this, 'dns_suffix');

  /// Reference to `partition` attribute.
  TfRef<String> get partition => TfRef.attribute<String>(this, 'partition');

  /// Reference to `reverse_dns_prefix` attribute.
  TfRef<String> get reverseDnsPrefix =>
      TfRef.attribute<String>(this, 'reverse_dns_prefix');
}
