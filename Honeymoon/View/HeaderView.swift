//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Łukasz Klimkiewicz on 29/12/2021.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK: - PROPERTIES
    
    @Binding var showGuideView: Bool
    
    var body: some View {
       
        HStack{
            
            
            Button {
                print("Information")
            } label: {
               
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
                
            }
            .accentColor(Color.primary)
            
            
            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button {
                
                self.showGuideView.toggle()
                
            } label: {
                
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
                    .accentColor(Color.primary)
                
                    .sheet(isPresented: $showGuideView) {
                        GuideView()
                    }

                
            }

        
            
        }
        .padding()
        
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    
    @State static var showGuide : Bool = false
    
    
    static var previews: some View {
        HeaderView(showGuideView: $showGuide)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
