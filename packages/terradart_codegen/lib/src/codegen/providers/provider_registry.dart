import 'aws_provider_rules.dart';
import 'cloudflare_provider_rules.dart';
import 'google_provider_rules.dart';
import 'provider_rules.dart';

/// Every [ProviderRules] adapter, keyed by [ProviderRules.providerId] (the
/// `--provider` value `wrap-init`, `wrap-promote` and the lane scaffold
/// accept).
const Map<String, ProviderRules> providerRulesById = {
  'hashicorp/google': GoogleProviderRules(),
  'cloudflare/cloudflare': CloudflareProviderRules(),
  'hashicorp/aws': AwsProviderRules(),
};
