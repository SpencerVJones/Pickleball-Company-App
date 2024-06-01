//  EventsView.swift
//  PickleballApp
//  Created by Spencer Jones on 3/29/24.

import SwiftUI

struct PickleballEvent {
    let title: String
    let dates: String
    let desc: String
    let registration: URL?
    let detailView: AnyView
    
    init(title: String,  dates: String, desc: String, registration: URL?, detailView: AnyView) {
        self.title = title
        self.dates = dates
        self.desc = desc
        self.registration = registration
        self.detailView = detailView
        
    }
}


struct CardView: View {
    
    let event: PickleballEvent
    
    var body: some View {
        VStack(spacing: 16) {
            VStack(alignment: .leading, spacing: 9) {
                HStack(alignment: .firstTextBaseline, spacing: 9) {
                    // Title
                    Text(event.title)
                        .kerning(1.0)
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        // Dates
                        Text(event.dates)
                            .kerning(1.0)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
                
                VStack(alignment: .leading) {
                    
                    // Description
                    Text(event.desc)
                        .font(.callout)
                        .fontWeight(/*@START_MENU_TOKEN@*/.regular/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.063, brightness: 0.258))
                    
                    HStack {
                        Spacer() // Spacer to align the buttons to the right
                        
                        Link("Register", destination: event.registration!)
                            .font(.system(size: 15, weight: .bold, design: .default))
                            .frame(width: 100.0, height: 20.0)
                            .foregroundColor(Color.white)
                            .padding(6)
                            .background(Color(red: 0.32, green: 0.67, blue: 0.866))
                            .cornerRadius(10)
                        
                        NavigationLink(destination: event.detailView) {
                            Image(systemName: "info.circle.fill")
                                .foregroundColor(Color.gray)
                                .imageScale(.large)
                        }
                        Spacer() // Add Spacer to align the buttons to the right
                    }
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .clipped()
            .background {
                // Background Shape
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .fill(Color(.secondarySystemGroupedBackground))
                    .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 3)
            }
            .padding(.vertical, -5)
        }
    }
}


struct EventsView: View {
    
    @State private var menuIsOpen = false
    
    let backgroundColor = Color.white
    
    let events: [PickleballEvent] = [
        
        // MARK: PEAR PARK
        PickleballEvent(
            title: "Pear Park",
            dates: "May 11 - 12",
            desc: "Come celebrate all the great Mothers at Pear Park in Leesburg, Florida. This event is Skill age. All brackets will be round robin.",
            registration: URL(string: "https://pickleballbrackets.com/ptD.aspx?eid=3e2c9c88-6280-4093-9ebd-18f7b2c43c9e")!,
            detailView: AnyView(PearDetailView())
        ),
        
        // MARK: VETERAN'S OPEN
        PickleballEvent(
            title: "Veteran's Open",
            dates: "May 24 - 26",
            desc: "Come join us for the Veteran's Amateur Classic Pickleball Tournament in Naples, Florida. All brackets will be round robin.",
            registration: URL(string: "https://pickleballbrackets.com/ptD.aspx?eid=ea68906c-2e47-4723-9795-0dc44530602d")!,
            detailView: AnyView(VeteransDetailView())
        ),
        
        // MARK: NOLA PICKLE FEST
        PickleballEvent(
            title: "NOLA Pickle Fest",
            dates: "Aug 8 - 11",
            desc: "The annual event NOLA Pickle Fest Presented by b1BANK is returning to New Orleans and continues to serve as a major fundraiser for the Brees Dream Foundation.",
            registration: URL(string: "https://pickleballbrackets.com/ptD.aspx?eid=b2451dc8-8ae3-4426-a5c8-b049535983dd")!,
            detailView: AnyView(NolaDetailView())
        ),
        
        // MARK: PEACE, LOVE, & PICKLEBALL
        PickleballEvent(
            title: "Peace Love ",
            dates: "Sep 13 - 15",
            desc: "This tournament is Presented by Pickleball Productions and Sponsored by Nike, Gamma, Joola, Ansboury Consulting and iDink Wear. We are excited to have our wonderful sponsors and partners for this tournament. ",
            registration: URL(string: "https://pickleballbrackets.com/ptD.aspx?eid=b582019b-6880-47f4-be0a-adfc9c790f00")!,
            detailView: AnyView(PeaceDetailView())
        ),
        
        // MARK: PINK OUT
        PickleballEvent(
            title: "Pink Out ",
            dates: "Oct 18 - 20",
            desc: "This our Breast Cancer Awareness Tournament. We will donate 10% of our profits to Breast Cancer Awareness. So wear your best PINK OUT Pickleball Attire and come join us for this fun event.",
            registration: URL(string: "https://pickleballbrackets.com/ptD.aspx?eid=1c13869a-5a46-4ac8-bd9b-ed57c9739218")!,
            detailView: AnyView(PinkDetailView())
        )
    ]
    
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    VStack {
                        
                        // MARK: LOGO
                        Image("Logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                        Spacer()
                        
                        // MARK: UPCOMING EVENTS
                        Group {
                            Text("Upcoming Events")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.gray)
                                .multilineTextAlignment(.center)
                            .padding(.top, -25.0)
                        }
                    }
                    
                    
                    // MARK: Displaying cards
                    ForEach(events, id: \.title) { event in
                        CardView(event: event)
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 20)
                    .opacity(0.95)
                    
                }
                .background(backgroundColor)
                
                // MARK: Side Menu Open Button
                Button(action: {
                    self.menuIsOpen.toggle()
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                }
                .padding(.trailing, UIScreen.main.bounds.width - 75)
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


struct EventsView_Previews: PreviewProvider {
    static var previews: some View {
        EventsView()
    }
}
