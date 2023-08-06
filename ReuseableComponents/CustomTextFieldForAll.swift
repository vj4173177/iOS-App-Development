//
//  CustomTextField.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 17/07/23.
//

import SwiftUI


struct CustomTextFieldForAll: View {
    @State var name:String=""

    var body: some View {
        ZStack{
            HStack{
                VStack{
                    
                    HStack{Text("Verifiy Phone Number").underline()
                        Spacer()
                    }
                    
                    HStack{
                        Text("+91")
                        TextField("Enter your Name",text:$name)
                    }
                }
               
            }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            .frame(maxWidth: .infinity)
                .frame(height: 100)
                .background(ColorConstants.Colors.BLUE_COLOR_Light).cornerRadius(10).padding(EdgeInsets(top: 0, leading: 16, bottom: 10, trailing: 16))
           

        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextFieldForAll()
    }
}
