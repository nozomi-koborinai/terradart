// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eip_domain_name`.
const Set<String> _awsEipDomainNameSensitive = <String>{};

/// Factory wrapper for `aws_eip_domain_name`.
final class AwsEipDomainName extends Resource {
  static const String tfType = 'aws_eip_domain_name';

  AwsEipDomainName({
    required super.localName,
    required TfArg<String> allocationId,
    required TfArg<String> domainName,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allocation_id': allocationId,
           'domain_name': domainName,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEipDomainNameSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ptr_record` attribute.
  TfRef<String> get ptrRecord => TfRef.attribute<String>(this, 'ptr_record');
}
