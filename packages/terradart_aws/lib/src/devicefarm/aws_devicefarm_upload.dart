// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_devicefarm_upload`.
const Set<String> _awsDevicefarmUploadSensitive = <String>{};

/// Devicefarm Upload enum for `type`.
enum DevicefarmUploadType implements TerraformEnum {
  androidApp('ANDROID_APP'),
  iosApp('IOS_APP'),
  webApp('WEB_APP'),
  externalData('EXTERNAL_DATA'),
  appiumJavaJunitTestPackage('APPIUM_JAVA_JUNIT_TEST_PACKAGE'),
  appiumJavaTestngTestPackage('APPIUM_JAVA_TESTNG_TEST_PACKAGE'),
  appiumPythonTestPackage('APPIUM_PYTHON_TEST_PACKAGE'),
  appiumNodeTestPackage('APPIUM_NODE_TEST_PACKAGE'),
  appiumRubyTestPackage('APPIUM_RUBY_TEST_PACKAGE'),
  appiumWebJavaJunitTestPackage('APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE'),
  appiumWebJavaTestngTestPackage('APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE'),
  appiumWebPythonTestPackage('APPIUM_WEB_PYTHON_TEST_PACKAGE'),
  appiumWebNodeTestPackage('APPIUM_WEB_NODE_TEST_PACKAGE'),
  appiumWebRubyTestPackage('APPIUM_WEB_RUBY_TEST_PACKAGE'),
  calabashTestPackage('CALABASH_TEST_PACKAGE'),
  instrumentationTestPackage('INSTRUMENTATION_TEST_PACKAGE'),
  uiautomationTestPackage('UIAUTOMATION_TEST_PACKAGE'),
  uiautomatorTestPackage('UIAUTOMATOR_TEST_PACKAGE'),
  xctestTestPackage('XCTEST_TEST_PACKAGE'),
  xctestUiTestPackage('XCTEST_UI_TEST_PACKAGE'),
  appiumJavaJunitTestSpec('APPIUM_JAVA_JUNIT_TEST_SPEC'),
  appiumJavaTestngTestSpec('APPIUM_JAVA_TESTNG_TEST_SPEC'),
  appiumPythonTestSpec('APPIUM_PYTHON_TEST_SPEC'),
  appiumNodeTestSpec('APPIUM_NODE_TEST_SPEC'),
  appiumRubyTestSpec('APPIUM_RUBY_TEST_SPEC'),
  appiumWebJavaJunitTestSpec('APPIUM_WEB_JAVA_JUNIT_TEST_SPEC'),
  appiumWebJavaTestngTestSpec('APPIUM_WEB_JAVA_TESTNG_TEST_SPEC'),
  appiumWebPythonTestSpec('APPIUM_WEB_PYTHON_TEST_SPEC'),
  appiumWebNodeTestSpec('APPIUM_WEB_NODE_TEST_SPEC'),
  appiumWebRubyTestSpec('APPIUM_WEB_RUBY_TEST_SPEC'),
  instrumentationTestSpec('INSTRUMENTATION_TEST_SPEC'),
  xctestUiTestSpec('XCTEST_UI_TEST_SPEC');

  const DevicefarmUploadType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_devicefarm_upload`.
final class AwsDevicefarmUpload extends Resource {
  static const String tfType = 'aws_devicefarm_upload';

  AwsDevicefarmUpload(
    super.localName, {
    TfArg<String>? contentType,
    required TfArg<String> name,
    required TfArg<String> projectArn,
    TfArg<String>? region,
    required TfArg<DevicefarmUploadType> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'content_type': ?contentType,
           'name': name,
           'project_arn': projectArn,
           'region': ?region,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDevicefarmUploadSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDevicefarmUpload>`.
  RefTo<AwsDevicefarmUpload> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `category` attribute.
  TfRef<String> get category => TfRef.attribute<String>(this, 'category');

  /// Reference to `metadata` attribute.
  TfRef<String> get metadata => TfRef.attribute<String>(this, 'metadata');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `content_type` attribute.
  TfRef<String> get contentType =>
      TfRef.attribute<String>(this, 'content_type');

  /// Reference to `project_arn` attribute.
  TfRef<String> get projectArn => TfRef.attribute<String>(this, 'project_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
