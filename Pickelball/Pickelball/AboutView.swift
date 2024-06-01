//  AboutView.swift
//  PickleballApp
//  Created by Spencer Jones on 3/29/24.


import SwiftUI


import SwiftUI

struct AboutServices {
    let title: String
    let content: String
}

struct AboutServicesView: View {
    let event: AboutServices
    var body: some View {
        VStack {
            Text(event.title)
                .multilineTextAlignment(.center)
                .italic()
                .font(.system(.title2, design: .rounded, weight: .semibold))
                .padding()
                .frame(height: 100)
                
            
            LinearGradient(gradient: Gradient(colors: [.teal, .black]), startPoint: .leading, endPoint: .trailing)
                .padding(.horizontal)
                .frame(height: 2)
                .clipped()
            
            Text(event.content)
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .padding(.all)
        }
        .padding(.horizontal)
        .frame(width: 350, height: 225)
        .clipped()
        .background {
            RoundedRectangle(cornerRadius: 35, style: .continuous)
                .fill(Color(.opaqueSeparator).opacity(0.22))
                .overlay {
                    Group {
                        
                    }
                }
                .clipped()
        }
    }
}


struct AboutView: View {
    @State private var menuIsOpen = false
    
    let events: [AboutServices] = [
        AboutServices(title: "Tournament Director Services", content: "Let us run YOUR tournament, we have the equipment, logistics and knowledge to make your tournament successful."),
        AboutServices(title: "Facility Management", content: "We can manage your park/location, create events and bring revenue to your facility."),
    ]
    
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
                            
                            HStack {
                                
                                VStack {
                                    
                                    Text("Welcome to the Pickleball Productions Family")
                                        .font(.largeTitle)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.gray)
                                        .multilineTextAlignment(.center)
                                        .padding(.top, -25.0)
                                        .padding(.bottom, 5.0)
                                    
                                    Text("Started in 2022, we saw a need for well organized fun pickle ball events that don't exclude even us novice players. We provide an all inclusive tournament atmosphere at many venues around the USA. Giving players chance to better themselves and move up brackets levels without feeling intimidated by having to be a pro player.")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .clipped()
                                        .font(.callout)
                                        .lineSpacing(3)
  
                                    Spacer()
                                }
                            }
                            Text("Our Services:")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.gray)
                                .multilineTextAlignment(.center)
                                .padding(.top, 20.0)
                                .padding(.bottom, -5.0)
                            Spacer()
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    AboutServicesView(event: events[0])
                                    AboutServicesView(event: events[1])
                                }
                               
                            }
                            .padding()
                            Spacer()
                            
                            Text("Why We Do Pickleball")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.gray)
                                .multilineTextAlignment(.center)
                                .padding(.top, 20.0)
                                .padding(.bottom, -15.0)
                                
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(alignment: .center) { // Explicitly setting alignment to center
                                    VStack(alignment: .center) {
                                        Text("We love the sport, the people and the thrill of the match")
                                            .multilineTextAlignment(.center)
                                            .padding(.all)
                                            .frame(width: 325)
                                      
                                        Image("linda")
                                            .resizable()
                                            .padding(.horizontal)
                                            .frame(width: 325, height: 300)
                                    }
                                    
                                    
                                    VStack(alignment: .center) {
                                        Text("Its a great sport for all ages and skill levels, provides great exercise in a less exhaustive court environment than some court sports")
                                            .multilineTextAlignment(.center)
                                            .padding(.all)
                                            .frame(width: 325)

                                        Image("sarah")
                                            .resizable()
                                            .padding(.horizontal)
                                            .frame(width: 325, height: 300)
                                    }
                                    
                                    VStack(alignment: .center) {
                                        Text("Being social is a great benefit of being in the pickle ball community. Meet new friends and expand your social group far and wide around the USA and the world")
                                            .multilineTextAlignment(.center)
                                            .padding(.all)
                                            .frame(width: 325)
                                        
                                        Image("man")
                                            .resizable()
                                            .padding(.horizontal)
                                            .frame(width: 350, height: 300)
                                    }
                                    
                                    
                                }
                                .frame(height: 450)
                                .padding(.horizontal)
                                
                            }
                            
                          
                            
                        }
                        .padding(.horizontal)
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
    AboutView()
}
