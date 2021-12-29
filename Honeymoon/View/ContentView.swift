//
//  ContentView.swift
//  Honeymoon
//
//  Created by Łukasz Klimkiewicz on 29/12/2021.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    @State var showAlert : Bool = false
    @State var showGuide : Bool = false
    
    var body: some View {
       
        VStack{
            
            HeaderView(showGuideView: $showGuide)
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[0])
            
                .padding()
            
            Spacer()
            
            
            FooterView(showBookingAlert: $showAlert)
            
            
        }
        
        .alert(isPresented: $showAlert){
            
            Alert(
                
                title: Text("Success!"),
                message: Text("Wishing a lovely and most"),
                dismissButton: .default(Text("Happy Honeymoon!"))
                
            )
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
