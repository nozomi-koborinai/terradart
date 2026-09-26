// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codeconnections_host`.
const Set<String> _awsCodeconnectionsHostSensitive = <String>{};

/// Typed helper for the `vpc_configuration` block of
/// `aws_codeconnections_host` (derived from provider schema).
@immutable
final class CodeconnectionsHostVpcConfiguration {
  const CodeconnectionsHostVpcConfiguration({
    required this.securityGroupIds,
    required this.subnetIds,
    this.tlsCertificate,
    required this.vpcId,
  });

  final TfArg<List<Object?>> securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  final TfArg<String>? tlsCertificate;

  final TfArg<String> vpcId;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
    if (tlsCertificate != null) 'tls_certificate': tlsCertificate!.toTfJson(),
    'vpc_id': vpcId.toTfJson(),
  };
}

/// Factory wrapper for `aws_codeconnections_host`.
final class AwsCodeconnectionsHost extends Resource {
  static const String tfType = 'aws_codeconnections_host';

  AwsCodeconnectionsHost({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> providerEndpoint,
    required TfArg<String> providerType,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<CodeconnectionsHostVpcConfiguration>? vpcConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'provider_endpoint': providerEndpoint,
           'provider_type': providerType,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (vpcConfiguration != null)
             'vpc_configuration': TfArg.literal([
               for (final e in vpcConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodeconnectionsHostSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
