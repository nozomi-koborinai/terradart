// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_appstream_image_builder`.
const Set<String> _awsAppstreamImageBuilderSensitive = <String>{};

/// Exactly one of `image_arn`, `image_name` on `aws_appstream_image_builder`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.imageArn(...)`.
sealed class AppstreamImageBuilderImage {
  const AppstreamImageBuilderImage();

  /// Sets `image_arn`.
  const factory AppstreamImageBuilderImage.imageArn(TfArg<String> imageArn) =
      AppstreamImageBuilderImageArn;

  /// Sets `image_name`.
  const factory AppstreamImageBuilderImage.imageName(TfArg<String> imageName) =
      AppstreamImageBuilderImageName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AppstreamImageBuilderImage.imageArn] choice: sets `image_arn`.
final class AppstreamImageBuilderImageArn extends AppstreamImageBuilderImage {
  const AppstreamImageBuilderImageArn(this.imageArn);

  final TfArg<String> imageArn;

  @override
  String get blockKey => 'image_arn';

  @override
  Map<String, Object?> encode() => {'image_arn': imageArn.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'image_arn': imageArn};
}

/// The [AppstreamImageBuilderImage.imageName] choice: sets `image_name`.
final class AppstreamImageBuilderImageName extends AppstreamImageBuilderImage {
  const AppstreamImageBuilderImageName(this.imageName);

  final TfArg<String> imageName;

  @override
  String get blockKey => 'image_name';

  @override
  Map<String, Object?> encode() => {'image_name': imageName.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'image_name': imageName};
}

/// Typed helper for the `access_endpoint` block of
/// `aws_appstream_image_builder` (derived from provider schema).
@immutable
final class AppstreamImageBuilderAccessEndpoint {
  const AppstreamImageBuilderAccessEndpoint({
    required this.endpointType,
    this.vpceId,
  });

  final AppstreamImageBuilderEndpointType endpointType;

  final TfArg<String>? vpceId;

  Map<String, Object?> encode() => {
    'endpoint_type': endpointType.toTfJson(),
    'vpce_id': ?vpceId?.toTfJson(),
  };
}

/// `endpoint_type` — derived from the provider schema description.
extension type const AppstreamImageBuilderEndpointType._(TfArg<String> _)
    implements TfArg<String> {
  AppstreamImageBuilderEndpointType.variable(String name)
    : this._(TfArg.variable(name));
  AppstreamImageBuilderEndpointType.expression(String template)
    : this._(TfArg.expression(template));
  const AppstreamImageBuilderEndpointType.arg(TfArg<String> arg) : this._(arg);

  static const streaming = AppstreamImageBuilderEndpointType._(
    TfArgLiteral('STREAMING'),
  );

  static const List<AppstreamImageBuilderEndpointType> values = [streaming];
}

/// Typed helper for the `domain_join_info` block of
/// `aws_appstream_image_builder` (derived from provider schema).
@immutable
final class AppstreamImageBuilderDomainJoinInfo {
  const AppstreamImageBuilderDomainJoinInfo({
    this.directoryName,
    this.organizationalUnitDistinguishedName,
  });

  final TfArg<String>? directoryName;

  final TfArg<String>? organizationalUnitDistinguishedName;

  Map<String, Object?> encode() => {
    'directory_name': ?directoryName?.toTfJson(),
    'organizational_unit_distinguished_name':
        ?organizationalUnitDistinguishedName?.toTfJson(),
  };
}

/// Typed helper for the `vpc_config` block of
/// `aws_appstream_image_builder` (derived from provider schema).
@immutable
final class AppstreamImageBuilderVpcConfig {
  const AppstreamImageBuilderVpcConfig({this.securityGroupIds, this.subnetIds});

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>>? subnetIds;

  Map<String, Object?> encode() => {
    'security_group_ids': ?securityGroupIds?.encodeAs('id').toTfJson(),
    'subnet_ids': ?subnetIds?.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_appstream_image_builder`.
final class AwsAppstreamImageBuilder extends Resource {
  static const String tfType = 'aws_appstream_image_builder';

  AwsAppstreamImageBuilder(
    super.localName, {
    TfArg<String>? appstreamAgentVersion,
    TfArg<String>? description,
    TfArg<String>? displayName,
    TfArg<bool>? enableDefaultInternetAccess,
    RefTo<AwsIamRole>? iamRoleArn,
    required AppstreamImageBuilderImage image,
    required TfArg<String> instanceType,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<AppstreamImageBuilderAccessEndpoint>? accessEndpoint,
    AppstreamImageBuilderDomainJoinInfo? domainJoinInfo,
    AppstreamImageBuilderVpcConfig? vpcConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'appstream_agent_version': ?appstreamAgentVersion,
           'description': ?description,
           'display_name': ?displayName,
           'enable_default_internet_access': ?enableDefaultInternetAccess,
           'iam_role_arn': ?iamRoleArn?.encodeAs('arn'),
           ...image.argMap,
           'instance_type': instanceType,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (accessEndpoint != null)
             'access_endpoint': TfArg.literal([
               for (final e in accessEndpoint) e.encode(),
             ]),
           if (domainJoinInfo != null)
             'domain_join_info': TfArg.literal(domainJoinInfo.encode()),
           if (vpcConfig != null)
             'vpc_config': TfArg.literal(vpcConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppstreamImageBuilderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppstreamImageBuilder>`.
  RefTo<AwsAppstreamImageBuilder> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `appstream_agent_version` attribute.
  TfRef<String> get appstreamAgentVersion =>
      TfRef.attribute<String>(this, 'appstream_agent_version');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enable_default_internet_access` attribute.
  TfRef<bool> get enableDefaultInternetAccess =>
      TfRef.attribute<bool>(this, 'enable_default_internet_access');

  /// Reference to `iam_role_arn` attribute.
  TfRef<String> get iamRoleArn => TfRef.attribute<String>(this, 'iam_role_arn');

  /// Reference to `image_arn` attribute.
  TfRef<String> get imageArn => TfRef.attribute<String>(this, 'image_arn');

  /// Reference to `image_name` attribute.
  TfRef<String> get imageName => TfRef.attribute<String>(this, 'image_name');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
