// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_swf_domain`.
const Set<String> _awsSwfDomainSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_swf_domain`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class SwfDomainName {
  const SwfDomainName();

  /// Sets `name`.
  const factory SwfDomainName.name(TfArg<String> name) = SwfDomainNameChoice;

  /// Sets `name_prefix`.
  const factory SwfDomainName.namePrefix(TfArg<String> namePrefix) =
      SwfDomainNamePrefix;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SwfDomainName.name] choice: sets `name`.
final class SwfDomainNameChoice extends SwfDomainName {
  const SwfDomainNameChoice(this.name);

  final TfArg<String> name;

  @internal
  @override
  String get blockKey => 'name';

  @internal
  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [SwfDomainName.namePrefix] choice: sets `name_prefix`.
final class SwfDomainNamePrefix extends SwfDomainName {
  const SwfDomainNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @internal
  @override
  String get blockKey => 'name_prefix';

  @internal
  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_swf_domain`.
final class AwsSwfDomain extends Resource {
  static const String tfType = 'aws_swf_domain';

  AwsSwfDomain(
    super.localName, {
    TfArg<String>? description,
    SwfDomainName? name,
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
           'description': ?description,
           ...?name?.argMap,
           'region': ?region,
           'tags': ?tags,
           'workflow_execution_retention_period_in_days':
               workflowExecutionRetentionPeriodInDays,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSwfDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSwfDomain>`.
  RefTo<AwsSwfDomain> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `workflow_execution_retention_period_in_days` attribute.
  TfRef<String> get workflowExecutionRetentionPeriodInDays =>
      TfRef.attribute<String>(
        this,
        'workflow_execution_retention_period_in_days',
      );
}
