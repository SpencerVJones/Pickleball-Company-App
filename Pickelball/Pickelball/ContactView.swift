//  ContactView.swift
//  PickleballApp
//  Created by Spencer Jones on 3/29/24.

import SwiftUI

struct ContactEvent {
    let title: String
    let imageName: String
    let contact: URL?
    
    init(title: String, imageName: String, contact: URL?) {
        self.title = title
        self.imageName = imageName
        self.contact = contact
    }
}

struct ContactCardView: View {
    let event: ContactEvent
    
    var body: some View {
        HStack {
            Link(destination: event.contact ?? URL(string: "")!, label: {
                VStack {
                    
                    VStack {
                        
                        Image(event.imageName)
                            .renderingMode(.original)
                            .resizable()
                        
                            .frame(width: 75, height: 75)
                            .clipped()
                        
                        VStack {
                            Text(event.title)
                                .foregroundColor(.primary)
                                .font(.system(.footnote, weight: .semibold))
                            
                        }
                    }
                    
                    .frame(width: 125)
                    .clipped()
                    .padding()
                    .background {
                        Rectangle()
                            .fill(.clear)
                            .background(Material.ultraThin)
                            .mask {
                                RoundedRectangle(cornerRadius: 16, style: .continuous)
                            }
                    }
                    .foregroundColor(.primary)
                }
            })
        }
    }
}

struct ContactView: View {
    @State private var menuIsOpen = false
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var message = ""



    let emailAddress = "info@mysite.com"
 
    
    let website = "https://www.pickleballproductions.org/"
    let facebook = "https://www.facebook.com/PickleballProductions"
    let twitter = "https://twitter.com/PickleballProd"
    let instagram = "https://www.instagram.com/pickleballproductions/?igsh=MXRpb3c1YmprcWkybQ%3D%3D&utm_source=qr"
    let threads = "https://www.threads.net/@pickleballproductions"
    let tiktok = "https://www.tiktok.com/@pickleballproductions"
    
    let latitude = 27.010294800136663
        let longitude = -82.14223004585735
    
    
    let events: [ContactEvent] = [
        ContactEvent(title: "Call Us",imageName: "phoneLogo", contact: URL(string: "tel://2394503395")!),
        ContactEvent(title: "Email Us",imageName: "mailLogo", contact: URL(string: "mailto:info@mysite.com")!),
        ContactEvent(title: "Stop By",imageName: "address", contact: URL(string: "https://maps.app.goo.gl/69htJyBv3GsrRVyx7")!),
        ContactEvent(title: "Vist Our Website",imageName: "webLogo", contact: URL(string: "https://www.pickleballproductions.org/")!)
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
                        Text("Let's Connect")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.center)
                            .padding(.top, -25.0)
                            .padding(.bottom, 5.0)
                        
                        Text("We look forward to hearing from you. Use this form for event setup, general contact, event sponsorship opportunities")
                            .font(.title3)
                            .multilineTextAlignment(.center)
                        Spacer()
                        
                        
                            Spacer()
                            // MARK: Displaying cards
                        HStack {
                            ContactCardView(event: events[0])
                            Spacer()
                            ContactCardView(event: events[1])
                        }
                        .padding(.horizontal)
                        .padding(.top)
                        
                        HStack {
                            ContactCardView(event: events[2])
                            Spacer()
                            ContactCardView(event: events[3])
                        }
                        .padding(.horizontal)
                        Spacer()
                        
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
    func openMaps() {
        let encodedTitle = "Pickleball Productions".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
            if let url = URL(string: "http://maps.apple.com/?ll=\(latitude),\(longitude)&q=\(latitude),\(longitude)") {
                UIApplication.shared.open(url)
            }
    }
}



#Preview {
    ContactView()
}
