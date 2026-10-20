// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_resiliencehubv2_input_source`.
const Set<String> _awsResiliencehubv2InputSourceSensitive = <String>{};

/// Typed helper for the `resource_configuration` block of
/// `aws_resiliencehubv2_input_source` (derived from provider schema).
@immutable
final class Resiliencehubv2InputSourceResourceConfiguration {
  const Resiliencehubv2InputSourceResourceConfiguration({
    this.cfnStackArn,
    this.designFileS3Url,
    this.tfStateFileUrl,
    this.eks,
    this.resourceTag,
  });

  final TfArg<String>? cfnStackArn;

  final TfArg<String>? designFileS3Url;

  final TfArg<String>? tfStateFileUrl;

  final List<Resiliencehubv2InputSourceEks>? eks;

  final List<Resiliencehubv2InputSourceResourceTag>? resourceTag;

  @internal
  Map<String, Object?> encode() => {
    'cfn_stack_arn': ?cfnStackArn?.toTfJson(),
    'design_file_s3_url': ?designFileS3Url?.toTfJson(),
    'tf_state_file_url': ?tfStateFileUrl?.toTfJson(),
    if (eks != null) 'eks': [for (final e in eks!) e.encode()],
    if (resourceTag != null)
      'resource_tag': [for (final e in resourceTag!) e.encode()],
  };
}

/// Typed helper for the `resource_configuration.eks` block of
/// `aws_resiliencehubv2_input_source` (derived from provider schema).
@immutable
final class Resiliencehubv2InputSourceEks {
  const Resiliencehubv2InputSourceEks({
    required this.clusterArn,
    required this.namespaces,
    this.labelSelector,
  });

  final TfArg<String> clusterArn;

  final TfArg<List<String>> namespaces;

  final List<Resiliencehubv2InputSourceLabelSelector>? labelSelector;

  @internal
  Map<String, Object?> encode() => {
    'cluster_arn': clusterArn.toTfJson(),
    'namespaces': namespaces.toTfJson(),
    if (labelSelector != null)
      'label_selector': [for (final e in labelSelector!) e.encode()],
  };
}

/// Typed helper for the `resource_configuration.eks.label_selector` block of
/// `aws_resiliencehubv2_input_source` (derived from provider schema).
@immutable
final class Resiliencehubv2InputSourceLabelSelector {
  const Resiliencehubv2InputSourceLabelSelector({
    this.matchLabels,
    this.matchExpressions,
  });

  final TfArg<Map<String, String>>? matchLabels;

  final List<Resiliencehubv2InputSourceMatchExpressions>? matchExpressions;

  @internal
  Map<String, Object?> encode() => {
    'match_labels': ?matchLabels?.toTfJson(),
    if (matchExpressions != null)
      'match_expressions': [for (final e in matchExpressions!) e.encode()],
  };
}

/// Typed helper for the `resource_configuration.eks.label_selector.match_expressions` block of
/// `aws_resiliencehubv2_input_source` (derived from provider schema).
@immutable
final class Resiliencehubv2InputSourceMatchExpressions {
  const Resiliencehubv2InputSourceMatchExpressions({
    required this.key,
    required this.operator,
    this.values,
  });

  final TfArg<String> key;

  final Resiliencehubv2InputSourceOperator operator;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'operator': operator.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// `operator` — derived from the provider schema description.
extension type const Resiliencehubv2InputSourceOperator._(TfArg<String> _)
    implements TfArg<String> {
  Resiliencehubv2InputSourceOperator.variable(String name)
    : this._(TfArg.variable(name));
  Resiliencehubv2InputSourceOperator.expression(String template)
    : this._(TfArg.expression(template));
  const Resiliencehubv2InputSourceOperator.arg(TfArg<String> arg) : this._(arg);

  static const inCase = Resiliencehubv2InputSourceOperator._(
    TfArgLiteral('IN'),
  );
  static const notIn = Resiliencehubv2InputSourceOperator._(
    TfArgLiteral('NOT_IN'),
  );
  static const exists = Resiliencehubv2InputSourceOperator._(
    TfArgLiteral('EXISTS'),
  );
  static const doesNotExist = Resiliencehubv2InputSourceOperator._(
    TfArgLiteral('DOES_NOT_EXIST'),
  );

  static const List<Resiliencehubv2InputSourceOperator> values = [
    inCase,
    notIn,
    exists,
    doesNotExist,
  ];
}

/// Typed helper for the `resource_configuration.resource_tag` block of
/// `aws_resiliencehubv2_input_source` (derived from provider schema).
@immutable
final class Resiliencehubv2InputSourceResourceTag {
  const Resiliencehubv2InputSourceResourceTag({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_resiliencehubv2_input_source`.
final class AwsResiliencehubv2InputSource extends Resource {
  static const String tfType = 'aws_resiliencehubv2_input_source';

  AwsResiliencehubv2InputSource(
    super.localName, {
    TfArg<String>? region,
    required TfArg<String> serviceArn,
    List<Resiliencehubv2InputSourceResourceConfiguration>?
    resourceConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'service_arn': serviceArn,
           if (resourceConfiguration != null)
             'resource_configuration': TfArg.literal([
               for (final e in resourceConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsResiliencehubv2InputSourceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsResiliencehubv2InputSource>`.
  RefTo<AwsResiliencehubv2InputSource> get ref => RefTo.of(this);

  /// Reference to `input_source_id` attribute.
  TfRef<String> get inputSourceId =>
      TfRef.attribute<String>(this, 'input_source_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_arn` attribute.
  TfRef<String> get serviceArn => TfRef.attribute<String>(this, 'service_arn');
}
