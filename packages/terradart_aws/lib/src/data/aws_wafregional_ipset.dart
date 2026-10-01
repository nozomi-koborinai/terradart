// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../wafregional/aws_wafregional_ipset.dart';

/// Sensitive field paths for `aws_wafregional_ipset`.
const Set<String> _awsWafregionalIpsetSensitive = <String>{};

/// Factory wrapper for `aws_wafregional_ipset`.
final class DataAwsWafregionalIpset extends Data {
  static const String tfType = 'aws_wafregional_ipset';

  DataAwsWafregionalIpset(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'name': name, 'region': ?region});

  @override
  Set<String> get sensitiveFields => _awsWafregionalIpsetSensitive;

  /// A reference to the `aws_wafregional_ipset` this data source reads, for
  /// arguments typed `RefTo<AwsWafregionalIpset>`.
  RefTo<AwsWafregionalIpset> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
