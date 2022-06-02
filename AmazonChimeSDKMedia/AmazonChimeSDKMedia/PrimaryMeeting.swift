//
//  PrimaryMeeting.swift
//  AmazonChimeSDKMedia
//
//  Created by Matt Pennig on 6/2/22.
//

import Foundation

public enum PrimaryMeetingEventTypeInternal {
    case joinAck, leave
}

public enum PrimaryMeetingEventStatusInternal {
    case Ok, CallAtCapacity, AuthenticationFailed
}
