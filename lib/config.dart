import 'package:sosedifedi/presentation/app_environment.dart';

const kProdBackend = 'https://api.coffeelil.online';
const kLocalBackend = 'http://10.0.2.2:8000';

const releaseAppEnvironment = AppEnvironment(
  configType: ConfigType.release,
  apiEndpoint: '$kProdBackend/api/',
  authServiceEndpoint: '$kProdBackend/auth/',
  systemId: 'sosedifedi',
  customerApiEndpoint: '$kProdBackend/customer/',
  analystEndpoint: '$kProdBackend/analyst',
  buildType: BuildType.release,
  debugOptions: DebugOptions(debugShowCheckedModeBanner: false),
  debugPaintOptions: DebugPaintOptions(),
  geocoderApiKey: '48f97ab4-b0e4-441b-b162-d5cd6266d48f',
  sbpUrl: '$kProdBackend/sbp/',
  paymentServiceEndpoint: '$kProdBackend/payment',
  dataownerId: 'owner-1',
  orderEndpoint: '$kProdBackend/order/',
  geocoderApiUrl: '$kProdBackend/geocode-maps/1.x/',
  defaultStore: 'catalog.json',
  integrationId: 'integration-1',
  fridgeApiUrl: '$kProdBackend/fridge/',
  paymentRedirectUrl: PaymentRedirectUrl(
    successUrl: '/success-message',
    failureUrl: '/failure-message',
  ),
  legalInfo: LegalInfo(
    userAgreementUrl:
        'https://reg.coffeelil.online/legal/user-argeement.html#no_universal_links',
    publicOfferUrl:
        'https://reg.coffeelil.online/legal/public-offer.html#no_universal_links',
    privacyPolicyUrl:
        'https://reg.coffeelil.online/legal/new-privacy-policy.html#no_universal_links',
  ),
  api1cEndpoint: '$kProdBackend/1c/',
  qrEndpoint: '$kProdBackend/qr',
  websiteUrl: 'https://coffeelil.by',
  knowledgeBaseUrl: 'https://lilcoffee.by/baza356735256lil',
);

const testAppEnvironment = AppEnvironment(
  configType: ConfigType.test,
  apiEndpoint: '$kLocalBackend/api/',
  authServiceEndpoint: '$kLocalBackend/auth/',
  systemId: 'sosedifedi',
  customerApiEndpoint: '$kLocalBackend/customer/',
  analystEndpoint: '$kLocalBackend/analyst',
  buildType: BuildType.release,
  debugOptions: DebugOptions(debugShowCheckedModeBanner: false),
  debugPaintOptions: DebugPaintOptions(),
  geocoderApiKey: '48f97ab4-b0e4-441b-b162-d5cd6266d48f',
  sbpUrl: '$kLocalBackend/sbp/',
  paymentServiceEndpoint: '$kLocalBackend/payment',
  dataownerId: 'owner-1',
  orderEndpoint: '$kLocalBackend/order/',
  geocoderApiUrl: '$kLocalBackend/geocode-maps/1.x/',
  defaultStore: 'catalog.json',
  integrationId: 'integration-1',
  fridgeApiUrl: '$kLocalBackend/fridge/',
  paymentRedirectUrl: PaymentRedirectUrl(
    successUrl: '/success-message',
    failureUrl: '/failure-message',
  ),
  legalInfo: LegalInfo(
    userAgreementUrl:
        'https://reg.sosedifedi.ru/legal/user-argeement.html#no_universal_links',
    publicOfferUrl:
        'https://reg.sosedifedi.ru/legal/public-offer.html#no_universal_links',
    privacyPolicyUrl:
        'https://reg.sosedifedi.ru/legal/new-privacy-policy.html#no_universal_links',
  ),
  api1cEndpoint: '$kLocalBackend/1c/',
  qrEndpoint: '$kLocalBackend/qr',
  websiteUrl: 'https://lilcoffee.by',
  knowledgeBaseUrl: '$kLocalBackend/knowledge-base/',
);
