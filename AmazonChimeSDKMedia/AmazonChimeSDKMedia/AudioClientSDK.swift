//
//  AudioClientSDK.swift
//  AmazonChimeSDKMedia
//
//  Created by Matt Pennig on 6/2/22.
//

import Foundation

public extension TranscriptItemInternal {
    var stable: Bool? {
        true
    }
    var confidence: Double? {
        0.0
    }
}

public extension TranscriptAlternativeInternal {
    class Entity: NSObject {
        public let type: String
        public let content: String
        public let category: String
        public let confidence: Double?
        public let startTimeMs: Int64
        public let endTimeMs: Int64

        public init(type: String,
                    content: String,
                    category: String,
                    confidence: Double?,
                    startTimeMs: Int64,
                    endTimeMs: Int64) {
            self.type = type
            self.content = content
            self.category = category
            self.confidence = confidence
            self.startTimeMs = startTimeMs
            self.endTimeMs = endTimeMs
        }
    }

    var entities: [Entity]! { [] }
}

public extension TranscriptResultInternal {
    class LanguageId: NSObject {
        public let languageCode: String
        public let score: Double

        public init(languageCode: String, score: Double) {
            self.languageCode = languageCode
            self.score = score
        }
    }

    var languageCode: String { "en" }
    var languageIdentification: [LanguageId]! { [] }
}
