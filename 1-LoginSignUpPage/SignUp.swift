//
//  SignUp.swift
//  1-GirisEkrani
//
//  Created by Seyfo on 21.03.2023.
//

import SwiftUI

struct SignUp: View {
    
    @State var userName = ""
    @State var password = ""
    var social = ["twitter","facebook","google"]
    
    var body: some View {
        
        VStack{
            
            HStack{
                Text("Create an Account").font(.title).fontWeight(.bold)
                Spacer()
            }.padding(.horizontal, 25)
                .padding(.top, 30)
            
            VStack(alignment: .leading, spacing: 15){
                Text("Username").font(.caption).fontWeight(.bold).foregroundColor(.gray)
                TextField("Email",text: $userName).padding().background(.white).cornerRadius(5)
                    .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: .black.opacity(0.08), radius: 5, x: 0, y: -5)
                
                Text("Password").font(.caption).fontWeight(.bold).foregroundColor(.gray)
                TextField("Password",text: $password).padding().background(.white).cornerRadius(5)
                    .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: .black.opacity(0.08), radius: 5, x: 0, y: -5)
           
            }.padding(.horizontal, 25)
                .padding(.top, 25)
            // Kayıt Olma Butonu Oluştur
            Button {
                
            } label: {
                Text("Sign Up").font(.system(size: 20))
                    .foregroundColor(.white).fontWeight(.bold).padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .background(
                        LinearGradient(colors: [Color("Color1"),Color("Color2")], startPoint: .topLeading, endPoint: .bottomTrailing)
                    ).cornerRadius(10)
            }.padding(.horizontal, 25)
                .padding(.top, 25)
            
            Button {
                
            } label: {
                HStack(spacing: 35){
                    Image(systemName: "faceid").font(.system(size: 26)).foregroundColor(Color("Color1"))
                    Text("Sign Up with Face ID").font(.system(size: 20)).fontWeight(.bold).foregroundColor(Color("Color1"))
                    Spacer()
                }.padding()
                    .background(RoundedRectangle(cornerRadius: 20).stroke(Color("Color1"),lineWidth: 1))
                    .padding(.horizontal, 25).padding(.top, 35)
            }
            HStack(spacing: 30){
                ForEach(social,id:\.self) { name in
                    Button {
                        
                    } label: {
                        Image(name).renderingMode(.template)
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color(name == "google" ? "Color2" : "Color1"))
                    }

                }
                
                
            }.padding(.top, 25)


        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
