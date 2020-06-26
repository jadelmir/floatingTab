//
//  ContentView.swift
//  floating Tab
//
//  Created by Jad El mir on 6/25/20.
//  Copyright © 2020 Jad El mir. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    @State private var isShown = true
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
       
            VStack{
                Spacer()
                     if self.isShown{
                HStack{
                    Spacer()
                    Button(action: {}, label: {Image(systemName: "square.and.arrow.up")})
                
                    Spacer()
             Button(action: {}, label: {Image(systemName: "square.and.arrow.up")})
                    Spacer()
                        Button(action: {}, label: {Image(systemName: "square.and.arrow.up")})
     
                    Spacer()

                }
                .frame(width:UIScreen.main.bounds.width - 100,height: 50)
                .background(Color.white)
                .cornerRadius(25)
                .padding(.bottom , 25)
                .onLongPressGesture(minimumDuration: 0.1,perform: ToggleView)
                .onTapGesture(count: 2 , perform: ToggleView)
          
                
                }else {
                        HStack(alignment: .center){
                            Spacer()
                            HStack{
                                Button(action: {}){
                                    Image(systemName: "plus")
                                }

                                }
                                .frame(width:50,height: 50)
                                .background(Color.white)
                                .cornerRadius(50)
                                .padding(.bottom , 25)
                                .onTapGesture(count: 2 , perform: ToggleView)
                                .onLongPressGesture(minimumDuration: 0.1,perform: ToggleView)
                                .animation(.interactiveSpring(response: 0.6, dampingFraction: 0.6, blendDuration: 0.6))
                                                
                        }
                        .frame(width:UIScreen.main.bounds.width-100)

                        
                }
               
            }

        }
    }
    func ToggleView (){
        withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)){
            self.isShown.toggle()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
