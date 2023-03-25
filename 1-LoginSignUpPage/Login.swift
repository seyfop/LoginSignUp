//
//  Login.swift
//  1-GirisEkrani
//
//  Created by Seyfo on 21.03.2023.
//

import SwiftUI

struct Login: View {
    
    @State var password = ""
    var social = ["twitter","facebook","google"]
    
    var body: some View {
        VStack{
            
            HStack{
                
                VStack(alignment: .leading, spacing: 12){
                    Text("Welcome Back").fontWeight(.bold)
                    Text("Seyfo").font(.title).fontWeight(.bold)
                    
                    Button {
                        
                    } label: {
                        Text("This is not me?")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .foregroundColor(Color("Color1"))
                    }

                }
                Spacer()
                
                Image("seyfo").resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                
                
                
            } // HStack Bitişi
            .padding(.horizontal, 25)
            .padding(.top, 30)
            
            VStack(alignment: .leading, spacing: 15){
                Text("Password").font(.caption).fontWeight(.bold).foregroundColor(.gray)
                
                TextField("Password", text: $password).padding()
                    .background(.white)
                    .cornerRadius(5)
                    .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: .black.opacity(0.08), radius: 5, x: 0, y: -5)
                
                Button {
                    
                } label: {
                    Text("Forget Password?").font(.system(size: 15))
                        .foregroundColor(Color("Color1"))
                }

                
            } // VStack Parola alanı Bitişi
            .padding(.horizontal, 25)
            .padding(.top, 25)
            // Oturum açma Butonu
            
            Button {
                
            } label: {
                Text("Log in").font(.system(size: 20))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color("Color1"),Color("Color2")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    ).cornerRadius(10)
            }.padding(.horizontal, 25)
                .padding(.top, 25)
            // Sosyal Medya Butonları
            Button {
                
            } label: {
                
                
                HStack(spacing: 35){
                    Image(systemName: "faceid").font(.system(size: 26)).foregroundColor(Color("Color1"))
                    
                    Text("Login with Face ID").font(.system(size: 20)).fontWeight(.bold).foregroundColor(Color("Color1"))
                    
                    Spacer()
                    
                }.padding()
                    .background(RoundedRectangle(cornerRadius: 20).stroke(Color("Color1"),lineWidth: 1))
                
            }.padding(.top, 35)
                .padding(.horizontal, 25)
            
            HStack(spacing: 30){
                ForEach(social,id:\.self){ name in
                    Button {
                        
                    } label: {
                        Image(name).renderingMode(.template)
                            .resizable()
                            .frame(width: 25,height: 25)
                            .foregroundColor(Color(name == "google" ? "Color2" : "Color1"))
                    }

                }
            }.padding(.top, 25)
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
