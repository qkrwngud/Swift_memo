//
//  MemoCell.swift
//  SwiftMemo
//
//  Created by 박주형 on 2023/01/29.
//

import SwiftUI

struct MemoCell: View {
    @ObservedObject var memo : Memo
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(memo.content)
                .font(.body)
                .lineLimit(1)
            
            Text(memo.insertDate, style: .date)
                .font(.caption)
                .foregroundColor(.secondary)
            
        }
    }
}

struct MemoCell_Previews: PreviewProvider {
    static var previews: some View {
        MemoCell(memo : Memo(content: "Test"))
    }
}
