//
//  RemoteVideoSource.m
//  AmazonChimeSDKMedia
//
//  Created by Matt Pennig on 6/2/22.
//

#import <Foundation/Foundation.h>
#import "RemoteVideoSource.h"

@implementation RemoteVideoSourceInternal
@synthesize attendeeId = _attendeeId;

- (instancetype)initWithAttendeeId:(NSString *)attendeeId {
    if (self = [super init]) {
        _attendeeId = attendeeId;
    }
    return self;
}
@end

@implementation VideoSubscriptionConfigurationInternal
@synthesize priority = _priority;
@synthesize targetResolution = _targetResolution;
@synthesize targetBitrate = _targetBitrate;

- (instancetype)initWithPriority:(PriorityInternal)priority
                targetResolution:(ResolutionInternal)targetResolution {
    if (self = [super init]) {
        _priority = priority;
        _targetResolution = targetResolution;
        _targetBitrate = 0;
    }
    return self;
}

- (BOOL)isEqual:(VideoSubscriptionConfigurationInternal *)object {
    return
        self.priority == object.priority &&
        self.targetResolution.width == object.targetResolution.width &&
        self.targetResolution.height == object.targetResolution.height &&
        self.targetBitrate == object.targetBitrate;
}
@end
