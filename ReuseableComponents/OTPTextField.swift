//
//  RedGradientColorButton.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 17/07/23.
//

import SwiftUI

struct OTPTextField: View {
    let numberOfFields :Int
    @State var pinTextValue:[String]
    @FocusState var onFocus: Int?
    init(numberOfFields:Int) {
        self.numberOfFields = numberOfFields
        self.pinTextValue = Array(repeating: "", count: numberOfFields)
    }
    var body: some View {
        HStack{
            ForEach(0...numberOfFields-1,id:\.self){
                index in       TextField("",text: $pinTextValue[index])
                    .keyboardType(.numberPad)
                    .frame(width: 55,height: 55)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                                              .stroke(Color.black, lineWidth: 1)
                    )
                    .multilineTextAlignment(.center)
                    .focused($onFocus,equals: index)
                    .tag(index)
                    .onChange(of: pinTextValue[index]){
                         newValue in
                        if pinTextValue[index].count>1{
                            pinTextValue[index]=String(pinTextValue[index].suffix(1))
                        }
                        
                        if !newValue.isEmpty{
                            if index==numberOfFields-1{
                                onFocus = nil

                            }else{
                                onFocus = (onFocus ?? 0) + 1

                            }
                        }else{
                            onFocus = (onFocus ?? 0) - 1

                        }
                    }
                
            }
        }.padding(EdgeInsets(
            top: 40, leading: 10, bottom: 0, trailing: 10
            ))
           
    }
}

struct OTPTextField_Previews: PreviewProvider {
    static var previews: some View {
        OTPTextField(numberOfFields: 6)
    }
}

