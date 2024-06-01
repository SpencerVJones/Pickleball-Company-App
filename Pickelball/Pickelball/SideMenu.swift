//  SideMenu.swift
//  PickleballApp
//  Created by Spencer Jones on 3/29/24.

import SwiftUI

struct SideMenu: View {
    let menuIsOpen: Bool
    let toggleMenu: () -> Void // Closure
    let sideMenuBackgroundColor =  LinearGradient(
        gradient: Gradient(colors: [
            Color(red: 0.22, green: 0.75, blue: 0.92), // Lighter Blue
            Color(red: 0.11, green: 0.54, blue: 0.80)  // Dark Blue
        ]),
        startPoint: .top,
        endPoint: .bottom
    )
    
    
    
    var body: some View {
        
        VStack {
            Spacer()
            
            // Navagtion to Home View
            NavigationLink(destination: ContentView()) {
                Text("Home")
                    .font(.title)
                    .foregroundColor(.black)
                    .bold()
            }
            
                .frame(width: 300) // Set the width of the button
            Spacer()
            
            // Navagtion to Events View
            NavigationLink(destination: EventsView()) {
                Text("Events")
                    .font(.title)
                    .foregroundColor(.black)
                    .bold()
            }
            
                .frame(width: 300) // Set the width of the button
            Spacer()
            
            // Navagtion to Shop View
//            NavigationLink(destination: ShopView()) {
//                Text("Shop")
//                    .font(.title)
//                    .foregroundColor(.black)
//                    .bold()
//            }
//            Spacer()
            
            
            // Navagtion to Blogs View
            NavigationLink(destination: BlogsView()) {
                Text("Blogs")
            }
            .font(.title)
            .foregroundColor(.black)
            .bold()
            Spacer()
            
            // Navagtion to About View
            NavigationLink(destination: AboutView()) {
                Text("About")
            }
            .font(.title)
            .foregroundColor(.black)
            .bold()
            Spacer()
            
            // Navagtion to Contact View
            NavigationLink(destination: ContactView()) {
                Text("Contact")
            }
            .font(.title)
            .foregroundColor(.black)
            .bold()
            .frame(width: 275)
            Spacer()
        }
        .background(sideMenuBackgroundColor)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .opacity(menuIsOpen ? 1 : 0)
        .animation(.easeIn)
        .gesture(DragGesture()
                    .onEnded { value in
                        if value.translation.width < -50 {
                            self.toggleMenu() // Swipe left to close the menu
                        }
                    }
                )
            }
        }

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
