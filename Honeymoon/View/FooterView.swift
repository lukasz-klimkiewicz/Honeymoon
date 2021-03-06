//
//  FooterView.swift
//  Honeymoon
//
//  Created by Łukasz Klimkiewicz on 29/12/2021.
//

import SwiftUI

struct FooterView: View {
    
    
    // MARK: - PROPERTIES
    
    @Binding var showBookingAlert: Bool
    
    var body: some View {
       
        
        VStack{
            
            
            HStack{
                
                Image(systemName: "xmark.circle")
                    .font(.system(size: 42, weight: .light))
                
                Spacer()
                
                Button {
                    
                    self.showBookingAlert.toggle()
               
                } label: {
                    
                    Text("Book destination".uppercased())
                        .font(.system(.subheadline, design: .rounded))
                        .fontWeight(.heavy)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 12)
                        .accentColor(Color.pink)
                        .background(
                            Capsule().stroke(Color.pink, lineWidth: 2)
                        )
                    
                }

                
                Spacer()
                
                Image(systemName: "heart.circle")
                    .font(.system(size: 42, weight: .regular))
                
                
            }
            .padding()
            
                
            
        }
        
        
    }
}

struct FooterView_Previews: PreviewProvider {
    
    @State static var showAlert: Bool = false
    
    static var previews: some View {
        FooterView(showBookingAlert: $showAlert)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
