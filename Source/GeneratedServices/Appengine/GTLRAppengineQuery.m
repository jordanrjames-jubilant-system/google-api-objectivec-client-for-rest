// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   App Engine Admin API (appengine/v1)
// Description:
//   Provisions and manages developers' App Engine applications.
// Documentation:
//   https://cloud.google.com/appengine/docs/admin-api/

#import "GTLRAppengineQuery.h"

#import "GTLRAppengineObjects.h"

// ----------------------------------------------------------------------------
// Constants

// overrideStrategy
NSString * const kGTLRAppengineOverrideStrategyOverride        = @"OVERRIDE";
NSString * const kGTLRAppengineOverrideStrategyStrict          = @"STRICT";
NSString * const kGTLRAppengineOverrideStrategyUnspecifiedDomainOverrideStrategy = @"UNSPECIFIED_DOMAIN_OVERRIDE_STRATEGY";

// view
NSString * const kGTLRAppengineViewBasic            = @"BASIC";
NSString * const kGTLRAppengineViewBasicCertificate = @"BASIC_CERTIFICATE";
NSString * const kGTLRAppengineViewFull             = @"FULL";
NSString * const kGTLRAppengineViewFullCertificate  = @"FULL_CERTIFICATE";

// ----------------------------------------------------------------------------
// Query Classes
//

@implementation GTLRAppengineQuery

@dynamic fields;

@end

@implementation GTLRAppengineQuery_AppsAuthorizedCertificatesCreate

@dynamic appsId;

+ (instancetype)queryWithObject:(GTLRAppengine_AuthorizedCertificate *)object
                         appsId:(NSString *)appsId {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"appsId" ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/authorizedCertificates";
  GTLRAppengineQuery_AppsAuthorizedCertificatesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.appsId = appsId;
  query.expectedObjectClass = [GTLRAppengine_AuthorizedCertificate class];
  query.loggingName = @"appengine.apps.authorizedCertificates.create";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsAuthorizedCertificatesDelete

@dynamic appsId, authorizedCertificatesId;

+ (instancetype)queryWithAppsId:(NSString *)appsId
       authorizedCertificatesId:(NSString *)authorizedCertificatesId {
  NSArray *pathParams = @[
    @"appsId", @"authorizedCertificatesId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/authorizedCertificates/{authorizedCertificatesId}";
  GTLRAppengineQuery_AppsAuthorizedCertificatesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.authorizedCertificatesId = authorizedCertificatesId;
  query.expectedObjectClass = [GTLRAppengine_Empty class];
  query.loggingName = @"appengine.apps.authorizedCertificates.delete";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsAuthorizedCertificatesGet

@dynamic appsId, authorizedCertificatesId, view;

+ (instancetype)queryWithAppsId:(NSString *)appsId
       authorizedCertificatesId:(NSString *)authorizedCertificatesId {
  NSArray *pathParams = @[
    @"appsId", @"authorizedCertificatesId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/authorizedCertificates/{authorizedCertificatesId}";
  GTLRAppengineQuery_AppsAuthorizedCertificatesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.authorizedCertificatesId = authorizedCertificatesId;
  query.expectedObjectClass = [GTLRAppengine_AuthorizedCertificate class];
  query.loggingName = @"appengine.apps.authorizedCertificates.get";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsAuthorizedCertificatesList

@dynamic appsId, pageSize, pageToken, view;

+ (instancetype)queryWithAppsId:(NSString *)appsId {
  NSArray *pathParams = @[ @"appsId" ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/authorizedCertificates";
  GTLRAppengineQuery_AppsAuthorizedCertificatesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.expectedObjectClass = [GTLRAppengine_ListAuthorizedCertificatesResponse class];
  query.loggingName = @"appengine.apps.authorizedCertificates.list";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsAuthorizedCertificatesPatch

@dynamic appsId, authorizedCertificatesId, updateMask;

+ (instancetype)queryWithObject:(GTLRAppengine_AuthorizedCertificate *)object
                         appsId:(NSString *)appsId
       authorizedCertificatesId:(NSString *)authorizedCertificatesId {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"appsId", @"authorizedCertificatesId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/authorizedCertificates/{authorizedCertificatesId}";
  GTLRAppengineQuery_AppsAuthorizedCertificatesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.appsId = appsId;
  query.authorizedCertificatesId = authorizedCertificatesId;
  query.expectedObjectClass = [GTLRAppengine_AuthorizedCertificate class];
  query.loggingName = @"appengine.apps.authorizedCertificates.patch";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsAuthorizedDomainsList

@dynamic appsId, pageSize, pageToken;

+ (instancetype)queryWithAppsId:(NSString *)appsId {
  NSArray *pathParams = @[ @"appsId" ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/authorizedDomains";
  GTLRAppengineQuery_AppsAuthorizedDomainsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.expectedObjectClass = [GTLRAppengine_ListAuthorizedDomainsResponse class];
  query.loggingName = @"appengine.apps.authorizedDomains.list";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsCreate

+ (instancetype)queryWithObject:(GTLRAppengine_Application *)object {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSString *pathURITemplate = @"v1/apps";
  GTLRAppengineQuery_AppsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:nil];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLRAppengine_Operation class];
  query.loggingName = @"appengine.apps.create";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsDomainMappingsCreate

@dynamic appsId, overrideStrategy;

+ (instancetype)queryWithObject:(GTLRAppengine_DomainMapping *)object
                         appsId:(NSString *)appsId {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"appsId" ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/domainMappings";
  GTLRAppengineQuery_AppsDomainMappingsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.appsId = appsId;
  query.expectedObjectClass = [GTLRAppengine_Operation class];
  query.loggingName = @"appengine.apps.domainMappings.create";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsDomainMappingsDelete

@dynamic appsId, domainMappingsId;

+ (instancetype)queryWithAppsId:(NSString *)appsId
               domainMappingsId:(NSString *)domainMappingsId {
  NSArray *pathParams = @[
    @"appsId", @"domainMappingsId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/domainMappings/{domainMappingsId}";
  GTLRAppengineQuery_AppsDomainMappingsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.domainMappingsId = domainMappingsId;
  query.expectedObjectClass = [GTLRAppengine_Operation class];
  query.loggingName = @"appengine.apps.domainMappings.delete";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsDomainMappingsGet

@dynamic appsId, domainMappingsId;

+ (instancetype)queryWithAppsId:(NSString *)appsId
               domainMappingsId:(NSString *)domainMappingsId {
  NSArray *pathParams = @[
    @"appsId", @"domainMappingsId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/domainMappings/{domainMappingsId}";
  GTLRAppengineQuery_AppsDomainMappingsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.domainMappingsId = domainMappingsId;
  query.expectedObjectClass = [GTLRAppengine_DomainMapping class];
  query.loggingName = @"appengine.apps.domainMappings.get";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsDomainMappingsList

@dynamic appsId, pageSize, pageToken;

+ (instancetype)queryWithAppsId:(NSString *)appsId {
  NSArray *pathParams = @[ @"appsId" ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/domainMappings";
  GTLRAppengineQuery_AppsDomainMappingsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.expectedObjectClass = [GTLRAppengine_ListDomainMappingsResponse class];
  query.loggingName = @"appengine.apps.domainMappings.list";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsDomainMappingsPatch

@dynamic appsId, domainMappingsId, updateMask;

+ (instancetype)queryWithObject:(GTLRAppengine_DomainMapping *)object
                         appsId:(NSString *)appsId
               domainMappingsId:(NSString *)domainMappingsId {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"appsId", @"domainMappingsId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/domainMappings/{domainMappingsId}";
  GTLRAppengineQuery_AppsDomainMappingsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.appsId = appsId;
  query.domainMappingsId = domainMappingsId;
  query.expectedObjectClass = [GTLRAppengine_Operation class];
  query.loggingName = @"appengine.apps.domainMappings.patch";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsFirewallIngressRulesBatchUpdate

@dynamic appsId;

+ (instancetype)queryWithObject:(GTLRAppengine_BatchUpdateIngressRulesRequest *)object
                         appsId:(NSString *)appsId {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"appsId" ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/firewall/ingressRules:batchUpdate";
  GTLRAppengineQuery_AppsFirewallIngressRulesBatchUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.appsId = appsId;
  query.expectedObjectClass = [GTLRAppengine_BatchUpdateIngressRulesResponse class];
  query.loggingName = @"appengine.apps.firewall.ingressRules.batchUpdate";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsFirewallIngressRulesCreate

@dynamic appsId;

+ (instancetype)queryWithObject:(GTLRAppengine_FirewallRule *)object
                         appsId:(NSString *)appsId {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"appsId" ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/firewall/ingressRules";
  GTLRAppengineQuery_AppsFirewallIngressRulesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.appsId = appsId;
  query.expectedObjectClass = [GTLRAppengine_FirewallRule class];
  query.loggingName = @"appengine.apps.firewall.ingressRules.create";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsFirewallIngressRulesDelete

@dynamic appsId, ingressRulesId;

+ (instancetype)queryWithAppsId:(NSString *)appsId
                 ingressRulesId:(NSString *)ingressRulesId {
  NSArray *pathParams = @[
    @"appsId", @"ingressRulesId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/firewall/ingressRules/{ingressRulesId}";
  GTLRAppengineQuery_AppsFirewallIngressRulesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.ingressRulesId = ingressRulesId;
  query.expectedObjectClass = [GTLRAppengine_Empty class];
  query.loggingName = @"appengine.apps.firewall.ingressRules.delete";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsFirewallIngressRulesGet

@dynamic appsId, ingressRulesId;

+ (instancetype)queryWithAppsId:(NSString *)appsId
                 ingressRulesId:(NSString *)ingressRulesId {
  NSArray *pathParams = @[
    @"appsId", @"ingressRulesId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/firewall/ingressRules/{ingressRulesId}";
  GTLRAppengineQuery_AppsFirewallIngressRulesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.ingressRulesId = ingressRulesId;
  query.expectedObjectClass = [GTLRAppengine_FirewallRule class];
  query.loggingName = @"appengine.apps.firewall.ingressRules.get";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsFirewallIngressRulesList

@dynamic appsId, matchingAddress, pageSize, pageToken;

+ (instancetype)queryWithAppsId:(NSString *)appsId {
  NSArray *pathParams = @[ @"appsId" ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/firewall/ingressRules";
  GTLRAppengineQuery_AppsFirewallIngressRulesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.expectedObjectClass = [GTLRAppengine_ListIngressRulesResponse class];
  query.loggingName = @"appengine.apps.firewall.ingressRules.list";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsFirewallIngressRulesPatch

@dynamic appsId, ingressRulesId, updateMask;

+ (instancetype)queryWithObject:(GTLRAppengine_FirewallRule *)object
                         appsId:(NSString *)appsId
                 ingressRulesId:(NSString *)ingressRulesId {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"appsId", @"ingressRulesId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/firewall/ingressRules/{ingressRulesId}";
  GTLRAppengineQuery_AppsFirewallIngressRulesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.appsId = appsId;
  query.ingressRulesId = ingressRulesId;
  query.expectedObjectClass = [GTLRAppengine_FirewallRule class];
  query.loggingName = @"appengine.apps.firewall.ingressRules.patch";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsGet

@dynamic appsId;

+ (instancetype)queryWithAppsId:(NSString *)appsId {
  NSArray *pathParams = @[ @"appsId" ];
  NSString *pathURITemplate = @"v1/apps/{appsId}";
  GTLRAppengineQuery_AppsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.expectedObjectClass = [GTLRAppengine_Application class];
  query.loggingName = @"appengine.apps.get";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsLocationsGet

@dynamic appsId, locationsId;

+ (instancetype)queryWithAppsId:(NSString *)appsId
                    locationsId:(NSString *)locationsId {
  NSArray *pathParams = @[
    @"appsId", @"locationsId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/locations/{locationsId}";
  GTLRAppengineQuery_AppsLocationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.locationsId = locationsId;
  query.expectedObjectClass = [GTLRAppengine_Location class];
  query.loggingName = @"appengine.apps.locations.get";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsLocationsList

@dynamic appsId, filter, pageSize, pageToken;

+ (instancetype)queryWithAppsId:(NSString *)appsId {
  NSArray *pathParams = @[ @"appsId" ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/locations";
  GTLRAppengineQuery_AppsLocationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.expectedObjectClass = [GTLRAppengine_ListLocationsResponse class];
  query.loggingName = @"appengine.apps.locations.list";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsOperationsGet

@dynamic appsId, operationsId;

+ (instancetype)queryWithAppsId:(NSString *)appsId
                   operationsId:(NSString *)operationsId {
  NSArray *pathParams = @[
    @"appsId", @"operationsId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/operations/{operationsId}";
  GTLRAppengineQuery_AppsOperationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.operationsId = operationsId;
  query.expectedObjectClass = [GTLRAppengine_Operation class];
  query.loggingName = @"appengine.apps.operations.get";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsOperationsList

@dynamic appsId, filter, pageSize, pageToken;

+ (instancetype)queryWithAppsId:(NSString *)appsId {
  NSArray *pathParams = @[ @"appsId" ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/operations";
  GTLRAppengineQuery_AppsOperationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.expectedObjectClass = [GTLRAppengine_ListOperationsResponse class];
  query.loggingName = @"appengine.apps.operations.list";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsPatch

@dynamic appsId, updateMask;

+ (instancetype)queryWithObject:(GTLRAppengine_Application *)object
                         appsId:(NSString *)appsId {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"appsId" ];
  NSString *pathURITemplate = @"v1/apps/{appsId}";
  GTLRAppengineQuery_AppsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.appsId = appsId;
  query.expectedObjectClass = [GTLRAppengine_Operation class];
  query.loggingName = @"appengine.apps.patch";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsRepair

@dynamic appsId;

+ (instancetype)queryWithObject:(GTLRAppengine_RepairApplicationRequest *)object
                         appsId:(NSString *)appsId {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"appsId" ];
  NSString *pathURITemplate = @"v1/apps/{appsId}:repair";
  GTLRAppengineQuery_AppsRepair *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.appsId = appsId;
  query.expectedObjectClass = [GTLRAppengine_Operation class];
  query.loggingName = @"appengine.apps.repair";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsServicesDelete

@dynamic appsId, servicesId;

+ (instancetype)queryWithAppsId:(NSString *)appsId
                     servicesId:(NSString *)servicesId {
  NSArray *pathParams = @[
    @"appsId", @"servicesId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/services/{servicesId}";
  GTLRAppengineQuery_AppsServicesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.servicesId = servicesId;
  query.expectedObjectClass = [GTLRAppengine_Operation class];
  query.loggingName = @"appengine.apps.services.delete";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsServicesGet

@dynamic appsId, servicesId;

+ (instancetype)queryWithAppsId:(NSString *)appsId
                     servicesId:(NSString *)servicesId {
  NSArray *pathParams = @[
    @"appsId", @"servicesId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/services/{servicesId}";
  GTLRAppengineQuery_AppsServicesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.servicesId = servicesId;
  query.expectedObjectClass = [GTLRAppengine_Service class];
  query.loggingName = @"appengine.apps.services.get";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsServicesList

@dynamic appsId, pageSize, pageToken;

+ (instancetype)queryWithAppsId:(NSString *)appsId {
  NSArray *pathParams = @[ @"appsId" ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/services";
  GTLRAppengineQuery_AppsServicesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.expectedObjectClass = [GTLRAppengine_ListServicesResponse class];
  query.loggingName = @"appengine.apps.services.list";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsServicesPatch

@dynamic appsId, migrateTraffic, servicesId, updateMask;

+ (instancetype)queryWithObject:(GTLRAppengine_Service *)object
                         appsId:(NSString *)appsId
                     servicesId:(NSString *)servicesId {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"appsId", @"servicesId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/services/{servicesId}";
  GTLRAppengineQuery_AppsServicesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.appsId = appsId;
  query.servicesId = servicesId;
  query.expectedObjectClass = [GTLRAppengine_Operation class];
  query.loggingName = @"appengine.apps.services.patch";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsServicesVersionsCreate

@dynamic appsId, servicesId;

+ (instancetype)queryWithObject:(GTLRAppengine_Version *)object
                         appsId:(NSString *)appsId
                     servicesId:(NSString *)servicesId {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"appsId", @"servicesId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/services/{servicesId}/versions";
  GTLRAppengineQuery_AppsServicesVersionsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.appsId = appsId;
  query.servicesId = servicesId;
  query.expectedObjectClass = [GTLRAppengine_Operation class];
  query.loggingName = @"appengine.apps.services.versions.create";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsServicesVersionsDelete

@dynamic appsId, servicesId, versionsId;

+ (instancetype)queryWithAppsId:(NSString *)appsId
                     servicesId:(NSString *)servicesId
                     versionsId:(NSString *)versionsId {
  NSArray *pathParams = @[
    @"appsId", @"servicesId", @"versionsId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}";
  GTLRAppengineQuery_AppsServicesVersionsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.servicesId = servicesId;
  query.versionsId = versionsId;
  query.expectedObjectClass = [GTLRAppengine_Operation class];
  query.loggingName = @"appengine.apps.services.versions.delete";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsServicesVersionsGet

@dynamic appsId, servicesId, versionsId, view;

+ (instancetype)queryWithAppsId:(NSString *)appsId
                     servicesId:(NSString *)servicesId
                     versionsId:(NSString *)versionsId {
  NSArray *pathParams = @[
    @"appsId", @"servicesId", @"versionsId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}";
  GTLRAppengineQuery_AppsServicesVersionsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.servicesId = servicesId;
  query.versionsId = versionsId;
  query.expectedObjectClass = [GTLRAppengine_Version class];
  query.loggingName = @"appengine.apps.services.versions.get";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsServicesVersionsInstancesDebug

@dynamic appsId, instancesId, servicesId, versionsId;

+ (instancetype)queryWithObject:(GTLRAppengine_DebugInstanceRequest *)object
                         appsId:(NSString *)appsId
                     servicesId:(NSString *)servicesId
                     versionsId:(NSString *)versionsId
                    instancesId:(NSString *)instancesId {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"appsId", @"instancesId", @"servicesId", @"versionsId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}/instances/{instancesId}:debug";
  GTLRAppengineQuery_AppsServicesVersionsInstancesDebug *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.appsId = appsId;
  query.servicesId = servicesId;
  query.versionsId = versionsId;
  query.instancesId = instancesId;
  query.expectedObjectClass = [GTLRAppengine_Operation class];
  query.loggingName = @"appengine.apps.services.versions.instances.debug";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsServicesVersionsInstancesDelete

@dynamic appsId, instancesId, servicesId, versionsId;

+ (instancetype)queryWithAppsId:(NSString *)appsId
                     servicesId:(NSString *)servicesId
                     versionsId:(NSString *)versionsId
                    instancesId:(NSString *)instancesId {
  NSArray *pathParams = @[
    @"appsId", @"instancesId", @"servicesId", @"versionsId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}/instances/{instancesId}";
  GTLRAppengineQuery_AppsServicesVersionsInstancesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.servicesId = servicesId;
  query.versionsId = versionsId;
  query.instancesId = instancesId;
  query.expectedObjectClass = [GTLRAppengine_Operation class];
  query.loggingName = @"appengine.apps.services.versions.instances.delete";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsServicesVersionsInstancesGet

@dynamic appsId, instancesId, servicesId, versionsId;

+ (instancetype)queryWithAppsId:(NSString *)appsId
                     servicesId:(NSString *)servicesId
                     versionsId:(NSString *)versionsId
                    instancesId:(NSString *)instancesId {
  NSArray *pathParams = @[
    @"appsId", @"instancesId", @"servicesId", @"versionsId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}/instances/{instancesId}";
  GTLRAppengineQuery_AppsServicesVersionsInstancesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.servicesId = servicesId;
  query.versionsId = versionsId;
  query.instancesId = instancesId;
  query.expectedObjectClass = [GTLRAppengine_Instance class];
  query.loggingName = @"appengine.apps.services.versions.instances.get";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsServicesVersionsInstancesList

@dynamic appsId, pageSize, pageToken, servicesId, versionsId;

+ (instancetype)queryWithAppsId:(NSString *)appsId
                     servicesId:(NSString *)servicesId
                     versionsId:(NSString *)versionsId {
  NSArray *pathParams = @[
    @"appsId", @"servicesId", @"versionsId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}/instances";
  GTLRAppengineQuery_AppsServicesVersionsInstancesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.servicesId = servicesId;
  query.versionsId = versionsId;
  query.expectedObjectClass = [GTLRAppengine_ListInstancesResponse class];
  query.loggingName = @"appengine.apps.services.versions.instances.list";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsServicesVersionsList

@dynamic appsId, pageSize, pageToken, servicesId, view;

+ (instancetype)queryWithAppsId:(NSString *)appsId
                     servicesId:(NSString *)servicesId {
  NSArray *pathParams = @[
    @"appsId", @"servicesId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/services/{servicesId}/versions";
  GTLRAppengineQuery_AppsServicesVersionsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.appsId = appsId;
  query.servicesId = servicesId;
  query.expectedObjectClass = [GTLRAppengine_ListVersionsResponse class];
  query.loggingName = @"appengine.apps.services.versions.list";
  return query;
}

@end

@implementation GTLRAppengineQuery_AppsServicesVersionsPatch

@dynamic appsId, servicesId, updateMask, versionsId;

+ (instancetype)queryWithObject:(GTLRAppengine_Version *)object
                         appsId:(NSString *)appsId
                     servicesId:(NSString *)servicesId
                     versionsId:(NSString *)versionsId {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"appsId", @"servicesId", @"versionsId"
  ];
  NSString *pathURITemplate = @"v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}";
  GTLRAppengineQuery_AppsServicesVersionsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.appsId = appsId;
  query.servicesId = servicesId;
  query.versionsId = versionsId;
  query.expectedObjectClass = [GTLRAppengine_Operation class];
  query.loggingName = @"appengine.apps.services.versions.patch";
  return query;
}

@end
