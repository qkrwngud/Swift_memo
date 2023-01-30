//
//  DetailView.swift
//  SwiftMemo
//
//  Created by 박주형 on 2023/01/30.
//

import SwiftUI

struct DetailView: View {
    
    @ObservedObject var memo : Memo // Memo타입의 파라미터를 밭아서 memo에 넣음
    
    @State private var showComposer = false
    
    @EnvironmentObject var store : MemoStore
    
    var body: some View {
        VStack{
            ScrollView{
                VStack{
                    HStack {
                        Text(memo.content)
                            .padding()
                        
                        Spacer(minLength: 0)
                    }
                    Text(memo.insertDate, style: .date)
                        .padding()
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
            }
        }
        .navigationTitle("메모 보기")
        .navigationBarTitleDisplayMode(.inline)
        
        .toolbar {
            ToolbarItemGroup(placement: .bottomBar){
                Button{
                    showComposer = true
                }label: {
                    Image(systemName: "square.and.pencil")
                }
            }
        }
        .sheet(isPresented: $showComposer){
            ComposeView(memo: memo)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(memo : Memo(content: "hello"))
                .environmentObject(MemoStore())
        }
    }
}
