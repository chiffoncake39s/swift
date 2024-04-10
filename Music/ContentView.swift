//
//  ContentView.swift
//  Music
//
//  Created by chiffon on 2024/03/04.
//

import SwiftUI

//動画埋め込み
import SwiftUI
import WebKit
import AVKit

struct ContentView: View {

    var body: some View {
        ScrollView {
            ZStack{
                /*Image("haikei")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)*/
                GeometryReader { geometry in
                        Image("music")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .clipped()
                    }
                    .edgesIgnoringSafeArea(.all)
            
                VStack {
                    Text("MusicList")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            Color(red: 255/255, green: 192/255, blue: 203/255)
                        )
                    VStack(alignment: .leading){
                        Text("ここでは個人的に好きな曲を紹介していきます")
                            .fontWeight(.bold)
                            .lineLimit(2)
                            .padding(.horizontal,10)
                    }

                    //1曲目
                    VStack {
                        Text("そして夜とともる")
                            .font(.system(size: 24.0))
                            .fontWeight(.bold)
                            .padding(.horizontal,10)
                            .padding(.vertical,5)
                        
                        Text("とても幻想的な曲なので、ぜひ聞いてみてください")
                            .fontWeight(.bold)
                            .padding(.horizontal,10)
                        
                        Image("moon")
                            .resizable()
                            .aspectRatio(16/9, contentMode: .fill)
                            .frame(maxWidth: .infinity)
                            .frame(height: 200) // 画像の高さを指定
                            .clipped() // 画像を枠内にクリップする
                        
                        VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "そして夜と灯る", withExtension: "mp4")!))
                            .aspectRatio(16/9, contentMode: .fill)
                            .frame(maxWidth: .infinity)
                            .frame(height: 200) // 動画の高さを指定
                    }
                    
                    //2曲目
                    VStack {
                        Text("39")
                            .font(.system(size: 24.0))
                            .fontWeight(.bold)
                            .padding(.horizontal,10)
                            .padding(.vertical,5)
                        
                        Text("『39』とは、初音ミク生誕5周年をお祝いするアニバーサリーソングである。 アルバム「初音ミク 5thバースデー ベスト」の収録曲。 2014年10月7日に、ニコニコ動画にて100万再生を達成した。")
                            .fontWeight(.bold)
                            .padding(.horizontal,10)
                        
                        Image("39")
                            .resizable()
                            .aspectRatio(16/9, contentMode: .fill)
                            .frame(maxWidth: .infinity)
                            .frame(height: 200) // 画像の高さを指定
                            .clipped() // 画像を枠内にクリップする
                        
                        VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "39", withExtension: "mp4")!))
                            .aspectRatio(16/9, contentMode: .fill)
                            .frame(maxWidth: .infinity)
                            .frame(height: 200) // 動画の高さを指定
                    }
                    
                    //3曲目
                    VStack {
                        Text("『阿波連さんははかれない』EDテーマ：「キョリ感」")
                            .font(.system(size: 24.0))
                            .fontWeight(.bold)
                            .padding(.horizontal,10)
                            .padding(.vertical,5)
                        
                        Text("男子高校生の来堂は、親切で心優しい一方で、人との距離感を測るのが苦手な女子高校生の阿波連れいなととなりの席になった。 れいなの突飛な行動に驚かされつつも、少しずつ彼女と友情を育んでいく来堂の姿を描いた学園ラブコメディ。")
                            .fontWeight(.bold)
                            .padding(.horizontal,10)
                        
                        Image("aharen")
                            .resizable()
                            .aspectRatio(16/9, contentMode: .fill)
                            .frame(maxWidth: .infinity)
                            .frame(height: 200) // 画像の高さを指定
                            .clipped() // 画像を枠内にクリップする
                        
                        VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "キョリ感", withExtension: "mp4")!))
                            .aspectRatio(16/9, contentMode: .fill)
                            .frame(maxWidth: .infinity)
                            .frame(height: 200) // 動画の高さを指定
                    }
                    
                    
                    Spacer()
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

/*#Preview {
    ContentView()
}*/
