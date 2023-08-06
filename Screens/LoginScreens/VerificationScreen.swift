//
//  VerificationScreen.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 17/07/23.
//

import SwiftUI

struct VerificationScreen: View {
   
    var body: some View {
        VStack{
            HStack{
                NavigationLink(destination: LoginScreen(), label: {
                    Image("back_button")

                })
                Text("OTP Verification")
                Spacer()
            }.padding(EdgeInsets(top: 20, leading: 20, bottom: 40, trailing: 0))
            VStack{
                Text("We have sent an verification code to")
                Text("+91 8817165579")
                OTPTextField(numberOfFields: 6)
                
                HStack{
                    Spacer()
                    CoustomResendButton(resedText:"Resend SMS in 0 ",widthOfResendButton: 150, heightOfResendButton: 10).padding(EdgeInsets(top: 20, leading: 10, bottom: 10, trailing: 10))
                        
                }
              
      
            }
            
            Spacer()
            
        
                .navigationBarBackButtonHidden(true)
        }
     
    }
}

struct VerificationScreen_Previews: PreviewProvider {
    static var previews: some View {
        VerificationScreen()
    }
}
