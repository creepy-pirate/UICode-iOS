//
//  ContentView.swift
//  UICode
//
//  Created by Deepak Singh on 10/09/21.
//

import SwiftUI





struct HomeView: View{
    var body : some View{
        NavigationView{
            ZStack{
                RoundedRectangle(cornerRadius:75).fill(Color(red: 90 / 255, green: 191 / 255, blue: 168 / 255)).offset(x: 0, y: -560)
               
                VStack {
                    HStack(alignment:.top, spacing: 130){
                                Text("Thursday, March 21,2021")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)
                        Image(systemName: "tray.fill").foregroundColor(Color.white).font(.title)
                                
                                
                    }
                    
                    Text("Morning Student,")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white).offset(x: -80, y: 0)
                        
                        
                        
                }.offset(x: 0, y: -400)
                
                
                            
                           
                   
                        
                    
                }
            }
     
        }
      
    
}

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView().tabItem { Image(systemName: "house"); Text("Home") }
            
            Text("Session").tabItem { Image(systemName: "person.crop.square.fill"); Text("Session") }
            
            Text("Refer").tabItem { Image(systemName: "person.3.fill"); Text("Refer and Earn") }
            
            Text("Profile").tabItem { Image(systemName: "person.fill"); Text("Profile") }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
