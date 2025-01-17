//
//  ErrorWrapper.swift
//  Scrumdinger App
//
//  Created by Likhitha Mandapati on 7/4/24.
//

import Foundation


struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidance: String


    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
