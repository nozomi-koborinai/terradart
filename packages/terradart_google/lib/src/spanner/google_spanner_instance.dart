// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_spanner_instance`.
const Set<String> _googleSpannerInstanceSensitive = <String>{};

/// Spanner Instance Default Backup Schedule enum for `default_backup_schedule_type`.
enum SpannerInstanceDefaultBackupScheduleType implements TerraformEnum {
  none('NONE'),
  automatic('AUTOMATIC');

  const SpannerInstanceDefaultBackupScheduleType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Spanner Instance enum for `edition`.
enum SpannerInstanceEdition implements TerraformEnum {
  editionUnspecified('EDITION_UNSPECIFIED'),
  standard('STANDARD'),
  enterprise('ENTERPRISE'),
  enterprisePlus('ENTERPRISE_PLUS');

  const SpannerInstanceEdition(this.terraformValue);
  @override
  final String terraformValue;
}

/// Spanner Instance Instance enum for `instance_type`.
enum SpannerInstanceInstanceType implements TerraformEnum {
  provisioned('PROVISIONED'),
  freeInstance('FREE_INSTANCE');

  const SpannerInstanceInstanceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Spanner Instance enum for `state`.
enum SpannerInstanceState implements TerraformEnum {
  ready('READY'),
  creating('CREATING');

  const SpannerInstanceState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_spanner_instance`.
///
/// An isolated set of Cloud Spanner resources on which databases can be hosted.
///
/// Cloud Spanner instance — horizontally scalable relational database.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [config]: instance configuration name (e.g. `regional-asia-northeast1`).
/// - [displayName]: user-visible label.
///
/// Set exactly one of [numNodes] or [processingUnits] for capacity.
///
/// Enable `spanner.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleSpannerInstance(
///   localName: 'app',
///   config: TfArg.literal('regional-asia-northeast1'),
///   displayName: TfArg.literal('App Spanner'),
///   numNodes: TfArg.literal(1),
/// );
/// ```
final class GoogleSpannerInstance extends Resource {
  static const String tfType = 'google_spanner_instance';

  GoogleSpannerInstance({
    required super.localName,
    required TfArg<String> config,
    required TfArg<String> displayName,
    TfArg<num>? numNodes,
    TfArg<num>? processingUnits,
    TfArg<SpannerInstanceEdition>? edition,
    TfArg<Map<String, String>>? labels,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'config': config,
           'display_name': displayName,
           if (numNodes != null) 'num_nodes': numNodes,
           if (processingUnits != null) 'processing_units': processingUnits,
           if (edition != null) 'edition': edition,
           if (labels != null) 'labels': labels,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSpannerInstanceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
