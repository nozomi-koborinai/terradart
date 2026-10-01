// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

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

  final InspectorAssessmentTemplateEvent event;

  final RefTo<AwsSnsTopic> topicArn;

  Map<String, Object?> encode() => {
    'event': event.toTfJson(),
    'topic_arn': topicArn.encodeAs('arn').toTfJson(),
  };
}

/// `event` — derived from the provider schema description.
extension type const InspectorAssessmentTemplateEvent._(TfArg<String> _)
    implements TfArg<String> {
  InspectorAssessmentTemplateEvent.variable(String name)
    : this._(TfArg.variable(name));
  InspectorAssessmentTemplateEvent.expression(String template)
    : this._(TfArg.expression(template));
  const InspectorAssessmentTemplateEvent.arg(TfArg<String> arg) : this._(arg);

  static const assessmentRunStarted = InspectorAssessmentTemplateEvent._(
    TfArgLiteral('ASSESSMENT_RUN_STARTED'),
  );
  static const assessmentRunCompleted = InspectorAssessmentTemplateEvent._(
    TfArgLiteral('ASSESSMENT_RUN_COMPLETED'),
  );
  static const assessmentRunStateChanged = InspectorAssessmentTemplateEvent._(
    TfArgLiteral('ASSESSMENT_RUN_STATE_CHANGED'),
  );
  static const findingReported = InspectorAssessmentTemplateEvent._(
    TfArgLiteral('FINDING_REPORTED'),
  );
  static const other = InspectorAssessmentTemplateEvent._(
    TfArgLiteral('OTHER'),
  );

  static const List<InspectorAssessmentTemplateEvent> values = [
    assessmentRunStarted,
    assessmentRunCompleted,
    assessmentRunStateChanged,
    findingReported,
    other,
  ];
}

/// Factory wrapper for `aws_inspector_assessment_template`.
final class AwsInspectorAssessmentTemplate extends Resource {
  static const String tfType = 'aws_inspector_assessment_template';

  AwsInspectorAssessmentTemplate(
    super.localName, {
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
           'region': ?region,
           'rules_package_arns': rulesPackageArns,
           'tags': ?tags,
           'target_arn': targetArn,
           if (eventSubscription != null)
             'event_subscription': TfArg.literal([
               for (final e in eventSubscription) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsInspectorAssessmentTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsInspectorAssessmentTemplate>`.
  RefTo<AwsInspectorAssessmentTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `duration` attribute.
  TfRef<num> get duration => TfRef.attribute<num>(this, 'duration');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rules_package_arns` attribute.
  TfRef<List<String>> get rulesPackageArns =>
      TfRef.attribute<List<String>>(this, 'rules_package_arns');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_arn` attribute.
  TfRef<String> get targetArn => TfRef.attribute<String>(this, 'target_arn');
}
