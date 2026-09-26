// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_inspector_assessment_template`.
const Set<String> _awsInspectorAssessmentTemplateSensitive = <String>{};

/// Typed helper for the `event_subscription` block of
/// `aws_inspector_assessment_template` (derived from provider schema).
@immutable
final class InspectorAssessmentTemplateEventSubscription {
  const InspectorAssessmentTemplateEventSubscription({
    required this.event,
    required this.topicArn,
  });

  final TfArg<String> event;

  final TfArg<String> topicArn;

  Map<String, Object?> encode() => {
    'event': event.toTfJson(),
    'topic_arn': topicArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_inspector_assessment_template`.
final class AwsInspectorAssessmentTemplate extends Resource {
  static const String tfType = 'aws_inspector_assessment_template';

  AwsInspectorAssessmentTemplate({
    required super.localName,
    required TfArg<num> duration,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<List<String>> rulesPackageArns,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> targetArn,
    List<InspectorAssessmentTemplateEventSubscription>? eventSubscription,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'duration': duration,
           'name': name,
           if (region != null) 'region': region,
           'rules_package_arns': rulesPackageArns,
           if (tags != null) 'tags': tags,
           'target_arn': targetArn,
           if (eventSubscription != null)
             'event_subscription': TfArg.literal([
               for (final e in eventSubscription) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsInspectorAssessmentTemplateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
