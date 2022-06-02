//
//  VideoClientSDK.m
//  AmazonChimeSDKMedia
//
//  Created by Matt Pennig on 6/2/22.
//

#import <Foundation/Foundation.h>
#import "VideoClientSDK.h"

@protocol VideoClientObserverAdapterDelegate
@optional
- (void)doNothing;
@end

@implementation VideoConfiguration
@synthesize isUsing16by9AspectRatio = _isUsing16by9AspectRatio;
@synthesize isSend16By9AspectRatio = _isSend16By9AspectRatio;
@synthesize isUsingUnifiedPlan = _isUsingUnifiedPlan;
@synthesize isUsingProbingAdaptiveSubscribe = _isUsingProbingAdaptiveSubscribe;
@synthesize isUsingSendSideBwe = _isUsingSendSideBwe;
@synthesize isUsingPixelBufferRenderer = _isUsingPixelBufferRenderer;
@synthesize isUsingOptimizedTwoSimulcastStreamTable = _isUsingOptimizedTwoSimulcastStreamTable;
@synthesize isContentShare = _isContentShare;
@synthesize isExcludeSelfContentInIndex = _isExcludeSelfContentInIndex;
@synthesize audioHostUrl = _audioHostUrl;
@synthesize isUsingInbandTurnCreds = _isUsingInbandTurnCreds;
@synthesize isDisablingSimulcastP2P = _isDisablingSimulcastP2P;
@end

@implementation DataMessageInternal
@synthesize timestampMs = _timestampMs;
@synthesize topic = _topic;
@synthesize data = _data;
@synthesize senderAttendeeId = _senderAttendeeId;
@synthesize senderExternalUserId = _senderExternalUserId;
@synthesize throttled = _throttled;
@end

@implementation VideoClient
@synthesize delegate = _delegate;

+ (void)globalInitialize {

}

- (void)start:(NSString*)callId
            token:(NSString*)token
          sending:(BOOL)sending
           config:(VideoConfiguration*)config
          appInfo:(app_detailed_info_t)appInfo
 signalingUrl:(NSString*)signalingUrl {

}

- (void)start:(NSString*)callId
            token:(NSString*)token
          sending:(BOOL)sending
           config:(VideoConfiguration*)config
      appInfo:(app_detailed_info_t)appInfo {

}

- (void)stop {

}

- (void)updateTurnCreds:(turn_session_response_t)turnResponse
             turnStatus:(video_client_turn_status_t)turnStatus {

}

- (void)setSending:(BOOL)sending {

}

- (void)setReceiving:(BOOL)receiving {

}

- (video_client_service_type_t)getServiceType {
    return 0;
}

- (void)setRemotePause:(uint32_t)video_id
                 pause:(BOOL)pause {

}

// Log callback
- (void)videoLogCallBack:(video_client_loglevel_t)logLevel
                     msg:(NSString*)msg {

}

// send data message
- (void)sendDataMessage:(NSString*)topic
                   data:(const char*)data
             lifetimeMs:(int)lifetimeMs {

}

- (void)setExternalVideoSource:(NSObject<VideoSourceInternal>*)source {

}

-(void)updateVideoSourceSubscriptions:(NSDictionary*)addedOrUpdated
                          withRemoved:(NSArray*)removed {

}

- (void)promotePrimaryMeeting:(NSString*)attendeeId
               externalUserId:(NSString*)externalUserId
                    joinToken:(NSString*)joinToken {

}

- (void)demoteFromPrimaryMeeting {

}

- (void)didReceiveVideoBuffer:(CVPixelBufferRef)image profileId:(NSString *)profileId videoId:(uint32_t)videoId timestampNs:(int64_t)timestampNs rotation:(VideoRotationInternal)rotation {

}

- (void)didRemoveRendererWithId:(uint32_t)videoId {

}

- (void)didUpdatePauseForRendererWithId:(uint32_t)videoId profileId:(NSString *)profileId state:(PauseState)type {

}
@end
