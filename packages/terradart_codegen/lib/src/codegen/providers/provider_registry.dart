import 'appwrite_provider_rules.dart';
import 'aws_provider_rules.dart';
import 'azure_provider_rules.dart';
import 'cloudflare_provider_rules.dart';
import 'google_provider_rules.dart';
import 'provider_rules.dart';

const Map<String, ProviderRules> providerRulesById = {
  'hashicorp/google': GoogleProviderRules(),
  'hashicorp/google-beta': GoogleBetaProviderRules(),
  'appwrite/appwrite': AppwriteProviderRules(),
  'cloudflare/cloudflare': CloudflareProviderRules(),
  'hashicorp/aws': AwsProviderRules(),
  'hashicorp/azurerm': AzureProviderRules(),
};
