//  ContentView.swift
//  PickleballApp
//  Created by Spencer Jones on 3/29/24.

import SwiftUI


    

struct ContentView: View {
    @State private var menuIsOpen = false
    @State var spinning: Bool = false
    
    let website = "https://www.pickleballproductions.org/"
    let facebook = "https://www.facebook.com/PickleballProductions"
    let twitter = "https://twitter.com/PickleballProd"
    let instagram = "https://www.instagram.com/pickleballproductions/?igsh=MXRpb3c1YmprcWkybQ%3D%3D&utm_source=qr"
    let threads = "https://www.threads.net/@pickleballproductions"
    let tiktok = "https://www.tiktok.com/@pickleballproductions"
    

    
    
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
                        
                        VStack {
                            
                            // Intro
                            Text("Welcome to Pickleball Productions!")
                                .font(.largeTitle)
                                .multilineTextAlignment(.center)
                                .padding(.top, -20.0)
                            Spacer()
                            Text("National Event Organizers")
                                .font(.title)
                                .foregroundColor(Color(red: 0.32, green: 0.67, blue: 0.866))
                                .multilineTextAlignment(.center)
                                .padding(.bottom)
                            Spacer()
                            
                            // About
                            Spacer()
                            Text("The Pickleball Productions Experience")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.gray)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, -25.0)
                            Spacer()
                            
                            
                            HStack {
                                
                                
                                Text("Events for all ages/brackets in fabulous locations around the USA. Tailored to create a high energy, fun event atmosphere.")
                                    .multilineTextAlignment(.leading)
                                    .padding(.leading)
                                Spacer()
                                
                                Image("pball 1")
                                    .resizable()
                                    .padding()
                                    .frame(width: 100, height: 100)
                                    .opacity(0.7)
                                    .rotation3DEffect(Angle(degrees: spinning ? 360 : 0), axis: (x: 0, y: 0, z: 0.1))
                                            .animation(Animation.linear(duration: 4.0).repeatForever(autoreverses: false), value: spinning)
                                            .onAppear {
                                                self.spinning = true
                                            }
                            }
                                    // Learn more nav -> About
                                    NavigationLink(destination: AboutView()) {
                                        Text("Learn More")
                                    }
                                    .font(.callout)
                                    .padding(.horizontal, 20)
                                    .padding(.vertical, 10.0)
                                    .background(Color(red: 0.32, green: 0.67, blue: 0.866))
                                    .cornerRadius(15)
                                    .frame(width: 200, height: 50)
                                    .foregroundColor(.white)
                                
                               
                                 
                                    
                            
                            Spacer()
                            
                            Spacer()
                            
                            // Events
                            Text("Our Events Are for Everyone")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.gray)
                                .multilineTextAlignment(.center)
                                
                            Spacer()
                            
                            
                            HStack{
                                Image("court")
                                    .resizable()
                                    .frame(height: 250.0)
                                VStack {
                                    (Spacer())
                                    
                                    Text("Enjoy the whole experience, play, watch, volunteer")
                                        .multilineTextAlignment(.center)
                                    Spacer()
                                    // Register here nav -> Events
                                    // Learn more nav
                                    NavigationLink(destination: EventsView()) {
                                        Text("Register Here")
                                            .multilineTextAlignment(.center)
                                            .font(.callout)
                                            .padding(.horizontal, 10.0)
                                            .padding(.vertical, 10.0)
                                            .background(Color(red: 0.32, green: 0.67, blue: 0.866))
                                            .cornerRadius(15)
                                            .frame(width: 200, height: 50)
                                            .foregroundColor(.white)
                                    }
                                    Spacer()
                                    Text("Have a location? Need an event?")
                                        .multilineTextAlignment(.center)
                                    
                                    Spacer()
                                    // Click Here nav -> Contact
                                    NavigationLink(destination: ContactView()) {
                                        Text("Tap Here")
                                            .multilineTextAlignment(.center)
                                            .font(.callout)
                                            .padding(.horizontal, 25.0)
                                            .padding(.vertical, 10.0)
                                            .background(Color(red: 0.32, green: 0.67, blue: 0.866))
                                            .cornerRadius(15)
                                            .frame(width: 200, height: 50)
                                            .foregroundColor(.white)
                                    }
                                    Spacer()
                                }
                        }
                            
                            Text("Follow Us")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.gray)
                                .multilineTextAlignment(.center)
                                .padding(.top)
                            
                            // Contact Links
                            HStack {
                                

                                // Facebook
                                Link(destination: URL(string: "\(facebook)")!) {
                                    Image("facebookLogo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height: 50)
                                }
                                
                                Spacer()
                                
                                // Twitter
                                Link(destination: URL(string: "\(twitter)")!) {
                                    Image("twitterLogo")
                                        .resizable()
                                        .scaledToFit()
                                    .frame(width: 50, height: 50)                                }
                                
                                Spacer()
                                
                                // Instagram
                                Link(destination: URL(string: "\(instagram)")!) {
                                    Image("instaLogo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height: 50)
                                }
                                
                                Spacer()
                                
                                // Threads
                                Link(destination: URL(string: "\(threads)")!) {
                                    Image("threadsLogo") //
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height: 50)
                                }
                                
                                Spacer()
                                
                                // TikTok
                                Link(destination: URL(string: "\(tiktok)")!) {
                                    Image("tiktokLogo") //
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height: 50)
                                }
                            }
                            
                        }
                        
                    }
                    .padding(.horizontal)
                            
                            VStack{
                                
                                Text("Our Sponsors")
                                    .font(.largeTitle)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.center)
                                    .padding(.top)
                                Image("zucaLogo")
                                    .resizable()
                                    
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.top, -100.0)
                                    .frame(width: 300.0, height: 175.0)
                                Spacer()
                            
                        
                        
                        
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



   struct ContentView_Previews: PreviewProvider {
       static var previews: some View {
           ContentView()
       }
   }
