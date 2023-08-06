//
//  LoginScreen.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 17/07/23.
//

import SwiftUI
import Combine

struct LoginScreen: View {
    @State private var keyboardHeight: CGFloat = 0

    @State var name:String=""
    var body: some View {
        VStack{
            Image("frame").resizable().frame(maxWidth: .infinity).frame(height: 400)
            Text( StringConstants.Strings.success_stories).bold().font(.system(size: 20)).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
            CustomTextFieldForAll()
            NavigationLink(destination: VerificationScreen(), label: {
                PurpleGradentColorButton(text:StringConstants.Strings.continue_text,height: 60,fullWidth: .infinity)
            })
  
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
        
        .padding(.bottom, keyboardHeight)
              .onReceive(Publishers.keyboardHeight) { keyboardHeight in
                  self.keyboardHeight = keyboardHeight
              }
              .animation(.easeOut(duration: 0.25))
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
    
}
