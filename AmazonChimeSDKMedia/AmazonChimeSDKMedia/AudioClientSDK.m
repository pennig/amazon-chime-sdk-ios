//
//  AudioClientSDK.m
//  AmazonChimeSDKMedia
//
//  Created by Matt Pennig on 6/2/22.
//

#import <Foundation/Foundation.h>
#import "AudioClientSDK.h"

@implementation AppInfo

@synthesize appName = _appName;
@synthesize appVersion = _appVersion;
@synthesize deviceMake = _deviceMake;
@synthesize deviceModel = _deviceModel;
@synthesize platformName = _platformName;
@synthesize platformVersion = _platformVersion;
@synthesize clientSource = _clientSource;
@synthesize chimeSdkVersion = _chimeSdkVersion;

- (id) initWithAppName:(NSString *)appName
            appVersion:(NSString *)appVersion
            deviceMake:(NSString *)deviceMake
           deviceModel:(NSString *)deviceModel
          platformName:(NSString *)platformName
       platformVersion:(NSString *)platformVersion
          clientSource:(NSString *)clientSource
       chimeSdkVersion:(NSString *)chimeSdkVersion {
    if (self = [super init]) {
        _appName = appName;
        _appVersion = appVersion;
        _deviceMake = deviceMake;
        _deviceModel = deviceModel;
        _platformName = platformName;
        _platformVersion = platformVersion;
        _clientSource = clientSource;
        _chimeSdkVersion = chimeSdkVersion;
    }
    return self;
}
@end

//

@implementation AttendeeInfoInternal
@synthesize attendeeId = _attendeeId;
@synthesize externalUserId = _externalUserId;

- (instancetype)initWithAttendeeId:(NSString *)attendeeId externalUserId:(NSString *)externalUserId {
    if (self = [super init]) {
        _attendeeId = attendeeId;
        externalUserId = externalUserId;
    }
    return self;
}
@end

//

@implementation TranscriptItemInternal

@synthesize type = _type;
@synthesize startTimeMs = _startTimeMs;
@synthesize endTimeMs = _endTimeMs;
@synthesize attendee = _attendee;
@synthesize content = _content;
@synthesize vocabularyFilterMatch = _vocabularyFilterMatch;

- (instancetype)initWithType:(TranscriptItemTypeInternal)type
                 startTimeMs:(int64_t)startTimeMs
                   endTimeMs:(int64_t)endTimeMs
                    attendee:(AttendeeInfoInternal *)attendee
                     content:(NSString *)content
       vocabularyFilterMatch:(BOOL)vocabularyFilterMatch {
    if (self = [super init]) {
        _type = type;
        _startTimeMs = startTimeMs;
        _endTimeMs = endTimeMs;
        _attendee = attendee;
        _content = content;
        _vocabularyFilterMatch = vocabularyFilterMatch;
    }
    return self;
}
@end

//

@implementation TranscriptAlternativeInternal
@synthesize items = _items;
@synthesize transcript = _transcript;

- (instancetype)initWithItems:(NSArray<TranscriptItemInternal *> *)items transcript:(NSString *)transcript {
    if (self = [super init]) {
        _items = items;
        _transcript = transcript;
    }
    return self;
}
@end

//

@implementation TranscriptResultInternal
@synthesize resultId = _resultId;
@synthesize channelId = _channelId;
@synthesize isPartial = _isPartial;
@synthesize startTimeMs = _startTimeMs;
@synthesize endTimeMs = _endTimeMs;
@synthesize alternatives = _alternatives;

- (instancetype)initWithResultId:(NSString *)resultId
                       channelId:(NSString *)channelId
                       isPartial:(BOOL)isPartial
                     startTimeMs:(int64_t)startTimeMs
                       endTimeMs:(int64_t)endTimeMs
                    alternatives:(NSArray<TranscriptAlternativeInternal *> *)alternatives {
    if (self = [super init]) {
        _resultId = resultId;
        _channelId = channelId;
        _isPartial = isPartial;
        _startTimeMs = startTimeMs;
        _endTimeMs = endTimeMs;
        _alternatives = alternatives;
    }
    return self;
}
@end

//

@implementation TranscriptionStatusInternal
@synthesize type = _type;
@synthesize eventTimeMs = _eventTimeMs;
@synthesize transcriptionRegion = _transcriptionRegion;
@synthesize transcriptionConfiguration = _transcriptionConfiguration;
@synthesize message = _message;

- (instancetype)initWithType:(enum TranscriptionStatusTypeInternal)type
                 eventTimeMs:(int64_t)eventTimeMs
         transcriptionRegion:(NSString *)transcriptionRegion
  transcriptionConfiguration:(NSString *)transcriptionConfiguration
                     message:(NSString *)message {
    if (self = [super init]) {
        _type = type;
        _eventTimeMs = eventTimeMs;
        _transcriptionRegion = transcriptionRegion;
        _transcriptionConfiguration = transcriptionConfiguration;
        _message = message;
    }
    return self;
}
@end

//

@implementation TranscriptInternal
@synthesize results = _results;
- initWithResults:(NSArray<TranscriptResultInternal *> *)results {
    if (self = [super init]) {
        _results = results;
    }
    return self;
}
@end

//

@implementation AudioClient
@synthesize delegate = _delegate;

// startSession method that passes AudioModeInternal for configuration of sample rate and channel count
- (audio_client_status_t)startSession:(NSString *)host
                             basePort:(NSInteger)port
                               callId:(NSString*)callId
                            profileId:(NSString*)profileId
                       microphoneMute:(BOOL)mic_mute
                          speakerMute:(BOOL)spk_mute
                          isPresenter:(BOOL)presenter
                         sessionToken:(NSString *)tokenString
                           audioWsUrl:(NSString *)audioWsUrl
                       callKitEnabled:(BOOL)callKitEnabled
                              appInfo:(AppInfo *)appInfo
                            audioMode:(AudioModeInternal)audioMode {
    return 0;
}

// startSession method that passes AppInfo containing iOS SDK metadata to Audioclient.
- (audio_client_status_t)startSession:(NSString *)host
                             basePort:(NSInteger)port
                               callId:(NSString*)callId
                            profileId:(NSString*)profileId
                       microphoneMute:(BOOL)mic_mute
                          speakerMute:(BOOL)spk_mute
                          isPresenter:(BOOL)presenter
                         sessionToken:(NSString *)tokenString
                           audioWsUrl:(NSString *)audioWsUrl
                       callKitEnabled:(BOOL)callKitEnabled
                              appInfo:(AppInfo *)appInfo {
    return 0;
}

// Legacy startSession method without passing AppInfo for backward compatibility.
- (audio_client_status_t)startSession:(NSString *)host
                             basePort:(NSInteger)port
                               callId:(NSString*)callId
                            profileId:(NSString*)profileId
                       microphoneMute:(BOOL)mic_mute
                          speakerMute:(BOOL)spk_mute
                          isPresenter:(BOOL)presenter
                         sessionToken:(NSString *)tokenString
                           audioWsUrl:(NSString *)audioWsUrl
                       callKitEnabled:(BOOL)callKitEnabled {
    return 0;
}

- (NSInteger)stopSession {
    return 1;
}

- (BOOL)isSpeakerOn {
    return YES;
}

- (BOOL)setSpeakerOn:(BOOL)value {
    return YES;
}

- (NSInteger) stopAudioRecord {
    return 1;
}

- (BOOL)isMicrophoneMuted {
    return YES;
}

- (NSInteger)setMicrophoneMuted:(BOOL)mute {
    return YES;
}

- (BOOL)isBliteNSSelected {
    return YES;
}

- (NSInteger)setBliteNSSelected:(BOOL)bliteSelected {
    return 1;
}

- (void)setPresenter:(BOOL)presenter {

}

- (void)remoteMute {

}

- (void) audioLogCallBack:(loglevel_t)logLevel
                      msg:(NSString*)msg {

}

#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR || TARGET_OS_MACCATALYST
- (void)beginOnHold {

}
- (void)endOnHold {

}
#endif

+ (AudioClient *)sharedInstance {
    return [[AudioClient alloc] init];
}

- (void)joinPrimaryMeeting:(NSString *)attendeeId
            externalUserId:(NSString *)externalUserId
                 joinToken:(NSString *)joinToken {

}

- (void)leavePrimaryMeeting {

}
@end

@implementation AttendeeUpdate
@synthesize profileId = _profileId;
@synthesize externalUserId = _externalUserId;
@synthesize data = _data;

- (id) initWithProfileId:(NSString *)profile_id
          externalUserId:(NSString *)external_user_id
                    data:(NSNumber *)data {
    if (self = [super init]) {
        _profileId = profile_id;
        _externalUserId = external_user_id;
    }
    return self;
}
@end
