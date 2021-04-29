//
//  ContentView.swift
//  Belajar Swift
//
//  Created by One Click Democracy  on 29/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("Gambar").resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(spacing:20){
                Logo()
                FormBox().padding()
            }
            .padding(.all,20)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Logo:View{
    var body: some View{
        VStack{
            Image("gambar")
                .resizable()
                .cornerRadius(10)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height:/*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.white)
                .padding()
                .background(Color("warnaku"))
                .cornerRadius(20)
            
            Text("Selamat datang di App Pertama").font(.system(size: 14.0))
        }

    }
}
struct FormBox:View {
    @State var username:String = ""
    @State var password : String = ""
    var body: some View{
        VStack {
            Text("Username")
                .font(.callout)
                .bold()
            
            TextField("Username ...", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle()).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
            Text("Password")
                .font(.callout)
                .bold()
            
            SecureField("Password ...", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle()).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Button(action:{print("Hello")}) {
                HStack{
                    Text("Login")
                    Spacer()
                }
            }
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(Color.white)
        }
        .padding(.all,30)
        .background(Color("warnaku"))
        .foregroundColor(.white)
    }
}
