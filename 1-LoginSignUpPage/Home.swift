//
//  Home.swift
//  1-LoginSignUpPage
//
//  Created by Seyfo on 21.03.2023.
//

import SwiftUI

struct Home: View {
    
    @State var index = 0
    @Namespace var name
    
    var body: some View {
        VStack{
            Image("logo2").resizable().aspectRatio(contentMode: .fill)
                .cornerRadius(10)
                .frame(width: 70,height: 70)
            
            HStack(spacing: 0){
                Button {
                    withAnimation(.spring()){
                        index = 0
                    }
                } label: {
                    VStack{
                        Text("Log In").font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 0 ? .black : .gray)
                        ZStack{
                            
                            Capsule().fill(.black.opacity(0.04))
                                .frame(height: 5)
                            if index == 0 { // Giriş yap alanı seçildiyse altındaki renkli çizgi
                                Capsule().fill(Color("Color1")).frame(height: 5)
                                    .matchedGeometryEffect(id: "Tab", in: name)
                            }
                             
                        }
                    }
                }
                Button {
                    withAnimation(.spring()){
                        index = 1
                    }
                } label: {
                    VStack{
                        Text("Sign Up").font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 1 ? .black : .gray)
                        ZStack{
                            
                            Capsule().fill(.black.opacity(0.04))
                                .frame(height: 5)
                            if index == 1 { // Giriş yap alanı seçildiyse altındaki renkli çizgi
                                Capsule().fill(Color("Color1")).frame(height: 5)
                                    .matchedGeometryEffect(id: "Tab", in: name)
                            }
                             
                        }
                    }
                }

                
            }.padding(.top, 30)
            
            if index == 0 {
                Login()
            }else {
                SignUp()
            }
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
