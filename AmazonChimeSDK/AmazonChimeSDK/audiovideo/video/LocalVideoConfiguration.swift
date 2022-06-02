//
//  LocalVideoConfiguration.swift
//  AmazonChimeSDK
//
//  Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
//  SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Configuration for a local video or content share to be sent
@objcMembers public class LocalVideoConfiguration: NSObject {

    /// The max bit rate for video encoding. If null, video client will default it to 1400 kbps
    /// and will scale down by numbers of video senders. Actual quality achieved may vary throughout the call
    /// depending on what system and network can provide.
    /// maxBitRate has to be greater than 0
    public var maxBitRateKbps: Int32? {
        didSet {
            if let bitRate = maxBitRateKbps, bitRate <= 0 {
                maxBitRateKbps = nil
            }
        }
    }

    public init(maxBitRateKbps: Int32? = nil) {
        super.init()
        self.maxBitRateKbps = maxBitRateKbps
    }
}
