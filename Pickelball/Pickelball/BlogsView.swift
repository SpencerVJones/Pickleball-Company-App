//  BlogsView.swift
//  PickleballApp
//  Created by Spencer Jones on 3/29/24.

import SwiftUI


struct BlogsEvent {
    let title: String
    let content: String
    let date: String
    let author: String
    let detailView: AnyView
    
    init(title: String, content: String, date: String, author: String, detailView: AnyView) {
        self.title = title
        self.content = content
        self.date = date
        self.author = author
        self.detailView = detailView
    }
}

struct BlogsCardView: View {
    let event: BlogsEvent
    
    var body: some View {
        NavigationLink(destination: event.detailView) {
            VStack(alignment: .leading) {
                HStack(spacing: 14) {}
                    .foregroundColor(.blue)
                    .padding(.vertical, 9)
                
                Text(event.title)
                    .foregroundColor(Color(red: 0.32, green: 0.67, blue: 0.866))
                    .font(.system(size: 24, weight: .regular, design: .default))
                    .multilineTextAlignment(.leading)
                    .padding(.top, -10.0)
                
                
                Text(event.content)
                    .foregroundColor(.black)
                    .font(.system(size: 15, weight: .regular, design: .default))
                    .multilineTextAlignment(.leading)
                
                HStack(alignment: .firstTextBaseline, spacing: 5) {
                    Text("by")
                        .italic()
                        .font(.system(size: 12, weight: .regular, design: .serif))
                        .foregroundColor(.secondary)
                    
                    Text(event.author)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                Text(event.date)
                    .foregroundColor(.secondary)
                    .font(.caption)
            }
            .font(.headline)
            .padding(.horizontal, 20.0)
            .clipped()
        }
    }
}

struct BlogsView: View {
    @State private var menuIsOpen = false
    
    let events: [BlogsEvent] = [
        BlogsEvent(title: "Tournaments \"A Bucket List Must\"", content: "Let’s face it, most of us are not spring chickens. The last time we properly or officially competed in a sport was probably so many...", date: "Feb 1. 2023", author: "Linda Naylor",  detailView: AnyView(ABucketListMust()))
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
                        
                        
                        Text("Blogs")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.center)
                            .padding(.top, -35.0)
                            .padding(.bottom, -35.0)
                        
                        
                        
                        // MARK: Displaying cards
                        ForEach(events, id: \.title) { event in
                            BlogsCardView(event: event)
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity) // Give the ScrollView a frame
                
                // Side Menu Open Button
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



struct BlogsView_Previews: PreviewProvider {
    static var previews: some View {
        BlogsView()
    }
}
