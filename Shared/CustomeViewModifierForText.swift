//
//  CustomeViewModifierForText.swift
//  ViewModifier-Demo
//
//  Created by Sohail Shaik on 06/12/21.
//

import Foundation
import SwiftUI

struct CustomeViewModifierForText: ViewModifier {
  let font:Font
  let backgroundColor:Color
  let width:CGFloat
  let height:CGFloat
  let alignment:Alignment
  let cornerRadius:CGFloat
    
 
  func body(content: Content) -> some View {
    content
      .font(font)
      .frame(width: width, height: height, alignment: alignment)
      .padding([.leading,.trailing], 5.0)
      .background(backgroundColor)
      .cornerRadius(5.0)
  }
}



extension View {
    func CustomeModifierForText(font:Font,backgroundColor:Color,width:CGFloat,height:CGFloat,alignment:Alignment,cornerRadius:CGFloat) -> some View {
        modifier(CustomeViewModifierForText(font: font, backgroundColor: backgroundColor, width: width, height: height, alignment: alignment, cornerRadius:cornerRadius) )
  }
}
