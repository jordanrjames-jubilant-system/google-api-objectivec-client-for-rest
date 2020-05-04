// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Android Device Provisioning Partner API (androiddeviceprovisioning/v1)
// Description:
//   Automates Android zero-touch enrollment for device resellers, customers,
//   and EMMs.
// Documentation:
//   https://developers.google.com/zero-touch/

#import "GTLRAndroidProvisioningPartnerQuery.h"

#import "GTLRAndroidProvisioningPartnerObjects.h"

@implementation GTLRAndroidProvisioningPartnerQuery

@dynamic fields;

@end

@implementation GTLRAndroidProvisioningPartnerQuery_CustomersConfigurationsCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRAndroidProvisioningPartner_Configuration *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/configurations";
  GTLRAndroidProvisioningPartnerQuery_CustomersConfigurationsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_Configuration class];
  query.loggingName = @"androiddeviceprovisioning.customers.configurations.create";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_CustomersConfigurationsDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRAndroidProvisioningPartnerQuery_CustomersConfigurationsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_Empty class];
  query.loggingName = @"androiddeviceprovisioning.customers.configurations.delete";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_CustomersConfigurationsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRAndroidProvisioningPartnerQuery_CustomersConfigurationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_Configuration class];
  query.loggingName = @"androiddeviceprovisioning.customers.configurations.get";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_CustomersConfigurationsList

@dynamic parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/configurations";
  GTLRAndroidProvisioningPartnerQuery_CustomersConfigurationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_CustomerListConfigurationsResponse class];
  query.loggingName = @"androiddeviceprovisioning.customers.configurations.list";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_CustomersConfigurationsPatch

@dynamic name, updateMask;

+ (instancetype)queryWithObject:(GTLRAndroidProvisioningPartner_Configuration *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRAndroidProvisioningPartnerQuery_CustomersConfigurationsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_Configuration class];
  query.loggingName = @"androiddeviceprovisioning.customers.configurations.patch";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_CustomersDevicesApplyConfiguration

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRAndroidProvisioningPartner_CustomerApplyConfigurationRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/devices:applyConfiguration";
  GTLRAndroidProvisioningPartnerQuery_CustomersDevicesApplyConfiguration *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_Empty class];
  query.loggingName = @"androiddeviceprovisioning.customers.devices.applyConfiguration";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_CustomersDevicesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRAndroidProvisioningPartnerQuery_CustomersDevicesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_Device class];
  query.loggingName = @"androiddeviceprovisioning.customers.devices.get";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_CustomersDevicesList

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/devices";
  GTLRAndroidProvisioningPartnerQuery_CustomersDevicesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_CustomerListDevicesResponse class];
  query.loggingName = @"androiddeviceprovisioning.customers.devices.list";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_CustomersDevicesRemoveConfiguration

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRAndroidProvisioningPartner_CustomerRemoveConfigurationRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/devices:removeConfiguration";
  GTLRAndroidProvisioningPartnerQuery_CustomersDevicesRemoveConfiguration *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_Empty class];
  query.loggingName = @"androiddeviceprovisioning.customers.devices.removeConfiguration";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_CustomersDevicesUnclaim

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRAndroidProvisioningPartner_CustomerUnclaimDeviceRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/devices:unclaim";
  GTLRAndroidProvisioningPartnerQuery_CustomersDevicesUnclaim *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_Empty class];
  query.loggingName = @"androiddeviceprovisioning.customers.devices.unclaim";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_CustomersDpcsList

@dynamic parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/dpcs";
  GTLRAndroidProvisioningPartnerQuery_CustomersDpcsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_CustomerListDpcsResponse class];
  query.loggingName = @"androiddeviceprovisioning.customers.dpcs.list";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_CustomersList

@dynamic pageSize, pageToken;

+ (instancetype)query {
  NSString *pathURITemplate = @"v1/customers";
  GTLRAndroidProvisioningPartnerQuery_CustomersList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_CustomerListCustomersResponse class];
  query.loggingName = @"androiddeviceprovisioning.customers.list";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_OperationsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRAndroidProvisioningPartnerQuery_OperationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_Operation class];
  query.loggingName = @"androiddeviceprovisioning.operations.get";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_PartnersCustomersCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRAndroidProvisioningPartner_CreateCustomerRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/customers";
  GTLRAndroidProvisioningPartnerQuery_PartnersCustomersCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_Company class];
  query.loggingName = @"androiddeviceprovisioning.partners.customers.create";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_PartnersCustomersList

@dynamic pageSize, pageToken, partnerId;

+ (instancetype)queryWithPartnerId:(long long)partnerId {
  NSArray *pathParams = @[ @"partnerId" ];
  NSString *pathURITemplate = @"v1/partners/{+partnerId}/customers";
  GTLRAndroidProvisioningPartnerQuery_PartnersCustomersList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.partnerId = partnerId;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_ListCustomersResponse class];
  query.loggingName = @"androiddeviceprovisioning.partners.customers.list";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_PartnersDevicesClaim

@dynamic partnerId;

+ (instancetype)queryWithObject:(GTLRAndroidProvisioningPartner_ClaimDeviceRequest *)object
                      partnerId:(long long)partnerId {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"partnerId" ];
  NSString *pathURITemplate = @"v1/partners/{+partnerId}/devices:claim";
  GTLRAndroidProvisioningPartnerQuery_PartnersDevicesClaim *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.partnerId = partnerId;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_ClaimDeviceResponse class];
  query.loggingName = @"androiddeviceprovisioning.partners.devices.claim";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_PartnersDevicesClaimAsync

@dynamic partnerId;

+ (instancetype)queryWithObject:(GTLRAndroidProvisioningPartner_ClaimDevicesRequest *)object
                      partnerId:(long long)partnerId {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"partnerId" ];
  NSString *pathURITemplate = @"v1/partners/{+partnerId}/devices:claimAsync";
  GTLRAndroidProvisioningPartnerQuery_PartnersDevicesClaimAsync *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.partnerId = partnerId;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_Operation class];
  query.loggingName = @"androiddeviceprovisioning.partners.devices.claimAsync";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_PartnersDevicesFindByIdentifier

@dynamic partnerId;

+ (instancetype)queryWithObject:(GTLRAndroidProvisioningPartner_FindDevicesByDeviceIdentifierRequest *)object
                      partnerId:(long long)partnerId {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"partnerId" ];
  NSString *pathURITemplate = @"v1/partners/{+partnerId}/devices:findByIdentifier";
  GTLRAndroidProvisioningPartnerQuery_PartnersDevicesFindByIdentifier *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.partnerId = partnerId;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_FindDevicesByDeviceIdentifierResponse class];
  query.loggingName = @"androiddeviceprovisioning.partners.devices.findByIdentifier";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_PartnersDevicesFindByOwner

@dynamic partnerId;

+ (instancetype)queryWithObject:(GTLRAndroidProvisioningPartner_FindDevicesByOwnerRequest *)object
                      partnerId:(long long)partnerId {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"partnerId" ];
  NSString *pathURITemplate = @"v1/partners/{+partnerId}/devices:findByOwner";
  GTLRAndroidProvisioningPartnerQuery_PartnersDevicesFindByOwner *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.partnerId = partnerId;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_FindDevicesByOwnerResponse class];
  query.loggingName = @"androiddeviceprovisioning.partners.devices.findByOwner";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_PartnersDevicesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRAndroidProvisioningPartnerQuery_PartnersDevicesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_Device class];
  query.loggingName = @"androiddeviceprovisioning.partners.devices.get";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_PartnersDevicesMetadata

@dynamic deviceId, metadataOwnerId;

+ (instancetype)queryWithObject:(GTLRAndroidProvisioningPartner_UpdateDeviceMetadataRequest *)object
                metadataOwnerId:(long long)metadataOwnerId
                       deviceId:(long long)deviceId {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"deviceId", @"metadataOwnerId"
  ];
  NSString *pathURITemplate = @"v1/partners/{+metadataOwnerId}/devices/{+deviceId}/metadata";
  GTLRAndroidProvisioningPartnerQuery_PartnersDevicesMetadata *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.metadataOwnerId = metadataOwnerId;
  query.deviceId = deviceId;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_DeviceMetadata class];
  query.loggingName = @"androiddeviceprovisioning.partners.devices.metadata";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_PartnersDevicesUnclaim

@dynamic partnerId;

+ (instancetype)queryWithObject:(GTLRAndroidProvisioningPartner_UnclaimDeviceRequest *)object
                      partnerId:(long long)partnerId {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"partnerId" ];
  NSString *pathURITemplate = @"v1/partners/{+partnerId}/devices:unclaim";
  GTLRAndroidProvisioningPartnerQuery_PartnersDevicesUnclaim *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.partnerId = partnerId;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_Empty class];
  query.loggingName = @"androiddeviceprovisioning.partners.devices.unclaim";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_PartnersDevicesUnclaimAsync

@dynamic partnerId;

+ (instancetype)queryWithObject:(GTLRAndroidProvisioningPartner_UnclaimDevicesRequest *)object
                      partnerId:(long long)partnerId {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"partnerId" ];
  NSString *pathURITemplate = @"v1/partners/{+partnerId}/devices:unclaimAsync";
  GTLRAndroidProvisioningPartnerQuery_PartnersDevicesUnclaimAsync *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.partnerId = partnerId;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_Operation class];
  query.loggingName = @"androiddeviceprovisioning.partners.devices.unclaimAsync";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_PartnersDevicesUpdateMetadataAsync

@dynamic partnerId;

+ (instancetype)queryWithObject:(GTLRAndroidProvisioningPartner_UpdateDeviceMetadataInBatchRequest *)object
                      partnerId:(long long)partnerId {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"partnerId" ];
  NSString *pathURITemplate = @"v1/partners/{+partnerId}/devices:updateMetadataAsync";
  GTLRAndroidProvisioningPartnerQuery_PartnersDevicesUpdateMetadataAsync *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.partnerId = partnerId;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_Operation class];
  query.loggingName = @"androiddeviceprovisioning.partners.devices.updateMetadataAsync";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_PartnersVendorsCustomersList

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/customers";
  GTLRAndroidProvisioningPartnerQuery_PartnersVendorsCustomersList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_ListVendorCustomersResponse class];
  query.loggingName = @"androiddeviceprovisioning.partners.vendors.customers.list";
  return query;
}

@end

@implementation GTLRAndroidProvisioningPartnerQuery_PartnersVendorsList

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/vendors";
  GTLRAndroidProvisioningPartnerQuery_PartnersVendorsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRAndroidProvisioningPartner_ListVendorsResponse class];
  query.loggingName = @"androiddeviceprovisioning.partners.vendors.list";
  return query;
}

@end
