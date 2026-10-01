// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicequotas_template`.
const Set<String> _awsServicequotasTemplateSensitive = <String>{};

/// Exactly one of `aws_region`, `region` on `aws_servicequotas_template`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.awsRegion(...)`.
sealed class ServicequotasTemplateRegion {
  const ServicequotasTemplateRegion();

  /// Sets `aws_region`.
  const factory ServicequotasTemplateRegion.awsRegion(TfArg<String> awsRegion) =
      ServicequotasTemplateAwsRegion;

  /// Sets `region`.
  const factory ServicequotasTemplateRegion.region(TfArg<String> region) =
      ServicequotasTemplateRegionChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ServicequotasTemplateRegion.awsRegion] choice: sets `aws_region`.
final class ServicequotasTemplateAwsRegion extends ServicequotasTemplateRegion {
  const ServicequotasTemplateAwsRegion(this.awsRegion);

  final TfArg<String> awsRegion;

  @override
  String get blockKey => 'aws_region';

  @override
  Map<String, Object?> encode() => {'aws_region': awsRegion.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'aws_region': awsRegion};
}

/// The [ServicequotasTemplateRegion.region] choice: sets `region`.
final class ServicequotasTemplateRegionChoice
    extends ServicequotasTemplateRegion {
  const ServicequotasTemplateRegionChoice(this.region);

  final TfArg<String> region;

  @override
  String get blockKey => 'region';

  @override
  Map<String, Object?> encode() => {'region': region.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'region': region};
}

/// Factory wrapper for `aws_servicequotas_template`.
final class AwsServicequotasTemplate extends Resource {
  static const String tfType = 'aws_servicequotas_template';

  AwsServicequotasTemplate(
    super.localName, {
    required ServicequotasTemplateRegion region,
    required TfArg<String> quotaCode,
    required TfArg<String> serviceCode,
    required TfArg<num> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...region.argMap,
           'quota_code': quotaCode,
           'service_code': serviceCode,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServicequotasTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsServicequotasTemplate>`.
  RefTo<AwsServicequotasTemplate> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `global_quota` attribute.
  TfRef<bool> get globalQuota => TfRef.attribute<bool>(this, 'global_quota');

  /// Reference to `quota_name` attribute.
  TfRef<String> get quotaName => TfRef.attribute<String>(this, 'quota_name');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceName =>
      TfRef.attribute<String>(this, 'service_name');

  /// Reference to `unit` attribute.
  TfRef<String> get unit => TfRef.attribute<String>(this, 'unit');

  /// Reference to `aws_region` attribute.
  TfRef<String> get awsRegion => TfRef.attribute<String>(this, 'aws_region');

  /// Reference to `quota_code` attribute.
  TfRef<String> get quotaCode => TfRef.attribute<String>(this, 'quota_code');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_code` attribute.
  TfRef<String> get serviceCode =>
      TfRef.attribute<String>(this, 'service_code');

  /// Reference to `value` attribute.
  TfRef<num> get value => TfRef.attribute<num>(this, 'value');
}
