//
//  GetStartedScreen.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 16/07/23.
//

import SwiftUI

struct GetStartedScreen: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("get_started_bg").resizable()
                    .ignoresSafeArea()
                VStack{
                    Image("datenicely_logo")
                    Spacer()
                    Text(StringConstants.Strings.serious_dating_only).foregroundColor(Color.white).font(.system(size: 30)).fontWeight(.bold).padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    Text(StringConstants.Strings.profiles_background_verified).foregroundColor(Color.white).font(.system(size: 15)).padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                
            
                    NavigationLink(destination: LoginScreen(), label: {
                        RedGradentColorButton(text: StringConstants.Strings.join_dateNicely,height: 60,fullWidth: .infinity)
                        
                    }
                    
                    )
                 
                }
                
            }
        }
        
      
        
    }
}

struct GetStartedScreen_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedScreen()
    }
}
