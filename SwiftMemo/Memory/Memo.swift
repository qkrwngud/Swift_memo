//
//  Memo.swift
//  SwiftMemo
//
//  Created by 박주형 on 2023/01/29.
//

import Foundation
import SwiftUI

class Memo: Identifiable, ObservableObject {
    
    let id: UUID
    @Published var content: String
    let insertDate: Date
    
    init(content: String, insertDate: Date = Date.now){
        
        id = UUID()
        self.content = content
        self.insertDate = insertDate
        
    }
    
}
