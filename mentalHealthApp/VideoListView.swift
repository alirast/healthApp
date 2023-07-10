//
//  VideoListView.swift
//  mentalHealthApp
//
//  Created by N S on 10.07.2023.
//

import SwiftUI

struct VideoListView: View {
    var body: some View {
        VStack {
            Image(systemName: "video")
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90)
                .foregroundColor(.white)
                .background(.gray)
            
            Button {
                print("tapped read more")
            } label: {
                Text("Read more")
                    .foregroundColor(.white)
                    .font(.system(size: 50))
            }
            .cornerRadius(10)
          
                
        }
        .padding()
        .background(.black)
        
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
