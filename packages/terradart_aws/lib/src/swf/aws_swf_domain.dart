// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_swf_domain`.
const Set<String> _awsSwfDomainSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_swf_domain`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class SwfDomainNameOrNamePrefix {
  const SwfDomainNameOrNamePrefix();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `name` (one of the [SwfDomainNameOrNamePrefix] choices).
final class SwfDomainNameOption extends SwfDomainNameOrNamePrefix {
  const SwfDomainNameOption({required this.name});

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// Sets `name_prefix` (one of the [SwfDomainNameOrNamePrefix] choices).
final class SwfDomainNamePrefixOption extends SwfDomainNameOrNamePrefix {
  const SwfDomainNamePrefixOption({required this.namePrefix});

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_swf_domain`.
final class AwsSwfDomain extends Resource {
  static const String tfType = 'aws_swf_domain';

  AwsSwfDomain({
    required super.localName,
    TfArg<String>? description,
    SwfDomainNameOrNamePrefix? nameOrNamePrefix,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> workflowExecutionRetentionPeriodInDays,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           ...?nameOrNamePrefix?.argMap,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'workflow_execution_retention_period_in_days':
               workflowExecutionRetentionPeriodInDays,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSwfDomainSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
