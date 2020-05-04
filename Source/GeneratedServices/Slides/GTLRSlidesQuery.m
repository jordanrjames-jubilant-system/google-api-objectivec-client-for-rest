// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Slides API (slides/v1)
// Description:
//   Reads and writes Google Slides presentations.
// Documentation:
//   https://developers.google.com/slides/

#import "GTLRSlidesQuery.h"

#import "GTLRSlidesObjects.h"

// ----------------------------------------------------------------------------
// Constants

// thumbnailPropertiesMimeType
NSString * const kGTLRSlidesThumbnailPropertiesMimeTypePng = @"PNG";

// thumbnailPropertiesThumbnailSize
NSString * const kGTLRSlidesThumbnailPropertiesThumbnailSizeLarge = @"LARGE";
NSString * const kGTLRSlidesThumbnailPropertiesThumbnailSizeMedium = @"MEDIUM";
NSString * const kGTLRSlidesThumbnailPropertiesThumbnailSizeSmall = @"SMALL";
NSString * const kGTLRSlidesThumbnailPropertiesThumbnailSizeThumbnailSizeUnspecified = @"THUMBNAIL_SIZE_UNSPECIFIED";

// ----------------------------------------------------------------------------
// Query Classes
//

@implementation GTLRSlidesQuery

@dynamic fields;

@end

@implementation GTLRSlidesQuery_PresentationsBatchUpdate

@dynamic presentationId;

+ (instancetype)queryWithObject:(GTLRSlides_BatchUpdatePresentationRequest *)object
                 presentationId:(NSString *)presentationId {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"presentationId" ];
  NSString *pathURITemplate = @"v1/presentations/{presentationId}:batchUpdate";
  GTLRSlidesQuery_PresentationsBatchUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.presentationId = presentationId;
  query.expectedObjectClass = [GTLRSlides_BatchUpdatePresentationResponse class];
  query.loggingName = @"slides.presentations.batchUpdate";
  return query;
}

@end

@implementation GTLRSlidesQuery_PresentationsCreate

+ (instancetype)queryWithObject:(GTLRSlides_Presentation *)object {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSString *pathURITemplate = @"v1/presentations";
  GTLRSlidesQuery_PresentationsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:nil];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLRSlides_Presentation class];
  query.loggingName = @"slides.presentations.create";
  return query;
}

@end

@implementation GTLRSlidesQuery_PresentationsGet

@dynamic presentationId;

+ (instancetype)queryWithPresentationId:(NSString *)presentationId {
  NSArray *pathParams = @[ @"presentationId" ];
  NSString *pathURITemplate = @"v1/presentations/{+presentationId}";
  GTLRSlidesQuery_PresentationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.presentationId = presentationId;
  query.expectedObjectClass = [GTLRSlides_Presentation class];
  query.loggingName = @"slides.presentations.get";
  return query;
}

@end

@implementation GTLRSlidesQuery_PresentationsPagesGet

@dynamic pageObjectId, presentationId;

+ (instancetype)queryWithPresentationId:(NSString *)presentationId
                           pageObjectId:(NSString *)pageObjectId {
  NSArray *pathParams = @[
    @"pageObjectId", @"presentationId"
  ];
  NSString *pathURITemplate = @"v1/presentations/{presentationId}/pages/{pageObjectId}";
  GTLRSlidesQuery_PresentationsPagesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.presentationId = presentationId;
  query.pageObjectId = pageObjectId;
  query.expectedObjectClass = [GTLRSlides_Page class];
  query.loggingName = @"slides.presentations.pages.get";
  return query;
}

@end

@implementation GTLRSlidesQuery_PresentationsPagesGetThumbnail

@dynamic pageObjectId, presentationId, thumbnailPropertiesMimeType,
         thumbnailPropertiesThumbnailSize;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"thumbnailPropertiesMimeType" : @"thumbnailProperties.mimeType",
    @"thumbnailPropertiesThumbnailSize" : @"thumbnailProperties.thumbnailSize"
  };
  return map;
}

+ (instancetype)queryWithPresentationId:(NSString *)presentationId
                           pageObjectId:(NSString *)pageObjectId {
  NSArray *pathParams = @[
    @"pageObjectId", @"presentationId"
  ];
  NSString *pathURITemplate = @"v1/presentations/{presentationId}/pages/{pageObjectId}/thumbnail";
  GTLRSlidesQuery_PresentationsPagesGetThumbnail *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.presentationId = presentationId;
  query.pageObjectId = pageObjectId;
  query.expectedObjectClass = [GTLRSlides_Thumbnail class];
  query.loggingName = @"slides.presentations.pages.getThumbnail";
  return query;
}

@end
