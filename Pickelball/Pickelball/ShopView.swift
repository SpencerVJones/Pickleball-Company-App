//
//  ShopView.swift
//  Pickelball
//
//  Created by Spencer Jones on 3/29/24.
//

import SwiftUI

struct ShopView: View {
    @State private var menuIsOpen = false

        var body: some View {
            NavigationView {
                ZStack {
                    ScrollView {
                        VStack {

                                // Logo
                                Image("Logo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                                
                                Spacer()
                            Text("Shop")
                        }
                    }

                    // Side Menu Open Button
                    Button(action: {
                        self.menuIsOpen.toggle()
                    }) {
                        Image(systemName: "line.horizontal.3")
                            .imageScale(.large)
                    }                .padding(.trailing, UIScreen.main.bounds.width - 75)
                    .padding(.bottom, UIScreen.main.bounds.height - 150)
                    if menuIsOpen {
                        Color.black.opacity(0.10)
                            .onTapGesture {
                                self.menuIsOpen.toggle()
                            }
                            .edgesIgnoringSafeArea(.all)
                        SideMenu(menuIsOpen: menuIsOpen, toggleMenu: {
                            self.menuIsOpen.toggle()
                        })
                        .frame(width: 375, height: UIScreen.main.bounds.height)
                        .padding(.trailing, UIScreen.main.bounds.width - 320)
                    }
                    
                }
                // Close the menu when ContentView appears
                .onAppear {
                    self.menuIsOpen = false
                }
            }
            
            .navigationBarBackButtonHidden(true) // Hide the back button

            
        }
    }

#Preview {
    ShopView()
}
