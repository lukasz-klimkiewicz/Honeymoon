//
//  GuideComponent.swift
//  Honeymoon
//
//  Created by Łukasz Klimkiewicz on 29/12/2021.
//

import SwiftUI

struct GuideComponent: View {
    
    
    // MARK: - PROPERTIES
    
    var title : String
    var subtitle: String
    var description: String
    var icon: String
    
    
    
    var body: some View {
       
        
        HStack(alignment: .center, spacing: 20){
            
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(Color.pink)
            
            VStack(alignment: .leading, spacing: 4){
                    
                HStack{
                    
                    Text(title.uppercased())
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    Spacer()
                    
                    Text(subtitle.uppercased())
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.pink)
                    
                }
                
                Divider()

                Text(description)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
                
                
            }
            
            
            
        }
        
        
        
        
    }
}

struct GuideComponent_Previews: PreviewProvider {
    static var previews: some View {
       
        GuideComponent(
            title: "Title",
            subtitle: "Swipe right",
            description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            icon: "heart.circle"
        )
        .previewLayout(.sizeThatFits)
    }
}
