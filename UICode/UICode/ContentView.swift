//
//  ContentView.swift
//  UICode
//
//  Created by Deepak Singh on 10/09/21.
//

import SwiftUI




struct UpcomingCardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
    }
    
}




struct UpcomingCard: View {
    
    var image: String
    var title: String
    var type: String
    var price: Double
    
    var body: some View {
        HStack(alignment: .center) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .padding(.all, 20)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 26, weight: .bold, design: .default))
                    .foregroundColor(.white)
                Text(type)
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .foregroundColor(.gray)
                HStack {
                    Text("$" + String.init(format: "%0.2f", price))
                        .font(.system(size: 16, weight: .bold, design: .default))
                        .foregroundColor(.white)
                        .padding(.top, 8)
                }
            }.padding(.trailing, 20)
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .background(Color(red: 32/255, green: 36/255, blue: 38/255))
        .modifier(UpcomingCardModifier())
        .padding(.all, 10)
    }
}



struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
    }
    
}





struct ProductCard: View {
    
    var title: String
    var type: String
    var definition: String
    
    var body: some View {
        HStack(alignment: .center) {
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 26, weight: .bold, design: .default))
                    .foregroundColor(.white).offset(x: 0, y: -10)
                
                HStack(spacing: 10 ){
                    
                Text(type)
                    .font(.system(size: 25, weight: .bold, design: .default))
                    .foregroundColor(Color(red: 90 / 255, green: 191 / 255, blue: 168 / 255)).offset(x: 0, y: -8)
                    
                    Image(systemName: "speaker.wave.2.circle.fill").foregroundColor(.white).offset( y:-8)
                    
                }
                Text(definition).font(.system(size: 12, weight: .regular, design: .default))
                    .foregroundColor(.white).offset(x: 0, y: 10)
               
            }.padding(.trailing, 20)
           
        }
        .frame(width:350, height:170 , alignment: .center)
        .background(Color(red: 32/255, green: 36/255, blue: 38/255))
        .modifier(CardModifier())
    }
}







struct HomeView: View{
    
    var body : some View{
        NavigationView{
          
            ScrollView {
            ZStack{
                RoundedRectangle(cornerRadius:75).fill(Color(red: 90 / 255, green: 191 / 255, blue: 168 / 255)).offset(x: 0, y: -170).frame(width: 500, height: 350)
             
               
              
                VStack(alignment: .center) {
                        HStack(alignment:.top, spacing: 130){
                                    Text("Thursday, March 21,2021")
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.white)
                            Image(systemName: "tray.fill").foregroundColor(Color.white).font(.title)
                                    
                                    
                        }.offset(y:-100)
                      
                        
                        Text("Morning Student,")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white).offset(x:-80,y:-100)
                          
                        
                        
                    
                            
                    ProductCard(title: "Word of the Day", type: "Nemesis", definition: "A person or thing is a situation,event or person which causes them to be seriously harmed.")
                    
                    
                    
                
                            
                }.offset( y: -30)
                
                ZStack{
                VStack{
                    Rectangle().foregroundColor(Color(red: 240 / 255, green: 245 / 255, blue: 245 / 255))
                }
                    
                    VStack(spacing:20){
                        HStack(spacing:130){
                            Text("Current Plan").foregroundColor(.gray)
                            ZStack{
                                Capsule().frame(width: 160, height: 40).foregroundColor(Color(red: 247 / 255, green: 206 / 255, blue: 204 / 255))
                                Text("Expires in 30 Days").font(.subheadline).foregroundColor(.red).font(.caption)
                            }
                        }.offset(x: 0, y: -90)
                        Text("Classic-6180").font(.system(size: 25, weight: .bold, design: .default))
                            .foregroundColor(Color(red: 90 / 255, green: 191 / 255, blue: 168 / 255)).offset(x: 0, y: -8).offset(x: -115, y: -100)
                        
                
                        
                        
                HStack{
                    Text("20/03/21  -----------------------------  20/04/21").fontWeight(.medium)
                        }.offset( y: -100)
                    
                    }
                    
                    VStack(spacing: 30){
                    HStack(spacing: 60){
                        Text("Sessions left")
                        Text("Total Sessions")
                    }.offset( y: 70)
                    
                    HStack(spacing: 150){
                        
                        Text("20")
                        Text("40")
                        
                    }.offset( y: 50)
                        
                        ZStack{

                            Capsule().frame(width: 200, height: 70).offset( y: 60).foregroundColor(Color(red: 90 / 255, green: 191 / 255, blue: 168 / 255))
                            Text("Book a slot").fontWeight(.medium).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white).offset( y: 60)
                        }
                    }
                    
                
                
                }.offset( y: 300)
                
                
                
                
                
              
                    
                    
                    
                    
                    
            
               
                    
            }
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




