//
//  ContentView.swift
//  Honeymoon
//
//  Created by Łukasz Klimkiewicz on 29/12/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        VStack{
            
            HeaderView()
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[0])
                .padding()
            
            Spacer()
            
            
            FooterView()
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
