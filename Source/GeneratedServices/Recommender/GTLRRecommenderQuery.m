// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Recommender API (recommender/v1beta1)
// Documentation:
//   https://cloud.google.com/recommender/docs/

#import "GTLRRecommenderQuery.h"

#import "GTLRRecommenderObjects.h"

@implementation GTLRRecommenderQuery

@dynamic fields;

@end

@implementation GTLRRecommenderQuery_ProjectsLocationsInsightTypesInsightsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}";
  GTLRRecommenderQuery_ProjectsLocationsInsightTypesInsightsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRRecommender_GoogleCloudRecommenderV1beta1Insight class];
  query.loggingName = @"recommender.projects.locations.insightTypes.insights.get";
  return query;
}

@end

@implementation GTLRRecommenderQuery_ProjectsLocationsInsightTypesInsightsList

@dynamic filter, pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1beta1/{+parent}/insights";
  GTLRRecommenderQuery_ProjectsLocationsInsightTypesInsightsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRRecommender_GoogleCloudRecommenderV1beta1ListInsightsResponse class];
  query.loggingName = @"recommender.projects.locations.insightTypes.insights.list";
  return query;
}

@end

@implementation GTLRRecommenderQuery_ProjectsLocationsInsightTypesInsightsMarkAccepted

@dynamic name;

+ (instancetype)queryWithObject:(GTLRRecommender_GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}:markAccepted";
  GTLRRecommenderQuery_ProjectsLocationsInsightTypesInsightsMarkAccepted *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRRecommender_GoogleCloudRecommenderV1beta1Insight class];
  query.loggingName = @"recommender.projects.locations.insightTypes.insights.markAccepted";
  return query;
}

@end

@implementation GTLRRecommenderQuery_ProjectsLocationsRecommendersRecommendationsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}";
  GTLRRecommenderQuery_ProjectsLocationsRecommendersRecommendationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRRecommender_GoogleCloudRecommenderV1beta1Recommendation class];
  query.loggingName = @"recommender.projects.locations.recommenders.recommendations.get";
  return query;
}

@end

@implementation GTLRRecommenderQuery_ProjectsLocationsRecommendersRecommendationsList

@dynamic filter, pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1beta1/{+parent}/recommendations";
  GTLRRecommenderQuery_ProjectsLocationsRecommendersRecommendationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRRecommender_GoogleCloudRecommenderV1beta1ListRecommendationsResponse class];
  query.loggingName = @"recommender.projects.locations.recommenders.recommendations.list";
  return query;
}

@end

@implementation GTLRRecommenderQuery_ProjectsLocationsRecommendersRecommendationsMarkClaimed

@dynamic name;

+ (instancetype)queryWithObject:(GTLRRecommender_GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}:markClaimed";
  GTLRRecommenderQuery_ProjectsLocationsRecommendersRecommendationsMarkClaimed *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRRecommender_GoogleCloudRecommenderV1beta1Recommendation class];
  query.loggingName = @"recommender.projects.locations.recommenders.recommendations.markClaimed";
  return query;
}

@end

@implementation GTLRRecommenderQuery_ProjectsLocationsRecommendersRecommendationsMarkFailed

@dynamic name;

+ (instancetype)queryWithObject:(GTLRRecommender_GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}:markFailed";
  GTLRRecommenderQuery_ProjectsLocationsRecommendersRecommendationsMarkFailed *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRRecommender_GoogleCloudRecommenderV1beta1Recommendation class];
  query.loggingName = @"recommender.projects.locations.recommenders.recommendations.markFailed";
  return query;
}

@end

@implementation GTLRRecommenderQuery_ProjectsLocationsRecommendersRecommendationsMarkSucceeded

@dynamic name;

+ (instancetype)queryWithObject:(GTLRRecommender_GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}:markSucceeded";
  GTLRRecommenderQuery_ProjectsLocationsRecommendersRecommendationsMarkSucceeded *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRRecommender_GoogleCloudRecommenderV1beta1Recommendation class];
  query.loggingName = @"recommender.projects.locations.recommenders.recommendations.markSucceeded";
  return query;
}

@end
