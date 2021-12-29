//
//  GuideView.swift
//  Honeymoon
//
//  Created by Łukasz Klimkiewicz on 29/12/2021.
//

import SwiftUI

struct GuideView: View {
    
    
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ScrollView{
            
            VStack(alignment: .center, spacing: 20){
                
                HeaderComponent()
                
                Spacer(minLength: 10)
                
            
                Text("Get started!")
                    .fontWeight(.black)
                    .font(.largeTitle)
                    .foregroundColor(Color.pink)
                
                
                Text("Discover and pick the perfect destionation for your romantic Honeymoon!")
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                
                Spacer(minLength: 10)
                
                
                VStack(alignment: .leading, spacing: 25){
                    
                    GuideComponent(title: "Like", subtitle: "Swipe right", description: "Do you like the destionation. It will be saved to your favourites", icon: "heart.circle" )
                    
                    
                    GuideComponent(title: "Like", subtitle: "Swipe right", description: "Do you like the destionation. It will be saved to your favourites", icon: "xmark.circle" )
                    
                    
                    GuideComponent(title: "Like", subtitle: "Swipe right", description: "Do you like the destionation. It will be saved to your favourites", icon: "checkmark.square" )
                    
                    
                }
                
                Spacer(minLength: 10)
                
                Button {
                    
                    
                    //print("Button  continue tapped")
                    self.presentationMode.wrappedValue.dismiss()
                    
                } label: {
                    Text("Continue".uppercased())
                        .font(.headline)
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .background(Capsule().fill(Color.pink))
                        .foregroundColor(Color.white)
                }

                
                
            }
            .frame(minWidth:0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
            
            
            
        }
        
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}
