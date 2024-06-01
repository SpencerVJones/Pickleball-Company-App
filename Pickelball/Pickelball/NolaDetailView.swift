//  NolaDetailView.swift
//  Pickelball
//  Created by Spencer Jones on 3/30/24.

import SwiftUI


// Nola PickleFest Tournament Event
struct NolaDetailView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                VStack(spacing: 6) {
                    // MARK: WELCOME
                    Text("Welcome to the NOLA Pickle Fest Tournament!")
                        .padding(.top)
                        .clipped()
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.32, green: 0.67, blue: 0.866))
                    
                }
                .padding(.bottom, -15.0)
                
                VStack {}
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .frame(height: 200)
                    .clipped()
                    .background {
                        // MARK: FLYER
                        Image("nola")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .padding()
                            .frame(width: 300.0, height: 200)
                    }
                    .overlay(alignment: .bottomTrailing) {
                        HStack(spacing: 15) {}
                            .font(.title3)
                            .padding()
                            .foregroundColor(.white)
                            .shadow(color: Color(.displayP3, red: 0/255, green: 0/255, blue: 0/255).opacity(0.11), radius: 8, x: 0, y: 4)
                    }
                
                
                HStack {
                    VStack(alignment: .leading, spacing: 3) {
                        // MARK: COST
                        Text("Cost to Register")
                            .font(.system(.title2, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .clipped()
                            .lineLimit(2)
                            .padding(.trailing, 80)
                    }
                    Text("$110")
                        .font(.title2)
                        .foregroundColor(.primary)
                }
                .padding()
                
                
                VStack {
                    // MARK: Date information
                    Text("Dates")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    VStack {
                        HStack {
                            Text("Thursday:")
                                .font(.title3)
                                .fontWeight(.bold)
                            Text("8:00 AM – 6:00 PM")
                                .font(.title3)
                        }
                        
                        HStack {
                            Text("Friday:")
                                .font(.title3)
                                .fontWeight(.bold)
                            Text("8:00 AM – 6:00 PM")
                                .font(.title3)
                        }
                        
                        HStack {
                            Text("Saturday:")
                                .font(.title3)
                                .fontWeight(.bold)
                            Text("8:00 AM – 6:00 PM")
                                .font(.title3)
                        }
                        
                        HStack {
                            Text("Sunday:")
                                .font(.title3)
                                .fontWeight(.bold)
                            Text("8:00 AM – 3:00 PM")
                                .font(.title3)
                        }
                    }
                    
                    Spacer()
                    Divider()
                    Spacer()
                    
                    // MARK: Prizes?
                    
                    
                    VStack {
                        // MARK: Venue Information
                        Text("Venue Information")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.top)
                        
                        HStack {
                            Image(systemName: "mappin.and.ellipse")
                                .foregroundColor(.blue)
                                .padding([.leading, .bottom, .trailing])
                                .frame(width: 15.0, height: 15.0)
                                .font(.title)
                            
                            Text("900 Convention Center Blvd New Orleans, LA ")
                                .padding(.bottom)
                        }
                        
                        HStack {
                            Text("Surface Type:")
                                .fontWeight(.bold)
                            Text("Synthetic / Acrylic")
                        }
                        
                        HStack {
                            Text("Play Area Type:")
                                .fontWeight(.bold)
                            Text("Indoor Air Conditioned")
                        }
                        
                        HStack {
                            Text("Net Type:")
                                .fontWeight(.bold)
                            Text("Portable")
                        }
                        
                        HStack {
                            Text("Ball Used:")
                                .fontWeight(.bold)
                            Text("Joola Heleus")
                        }
                        
                        HStack {
                            Text("Number of Courts:")
                                .fontWeight(.bold)
                            Text("25")
                        }
                        
                        HStack {
                            Text("Parking:")
                                .fontWeight(.bold)
                            Text("Paid Parking $23")
                        }
                    }
                    Spacer()
                    Divider()
                    Spacer()
                    
                    
                    // MARK: Refund information
                    VStack {
                        Text("Refund Policy")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        Text("Refunds will be given minus $20 to cover fees until Aug 1, 2024. No refunds after Aug 1, 2024 when registration closes.")
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                        
                    }
                    Spacer()
                    
                    
                    // MARK: REGISTER BUTTON
                    Button(action: {
                        if let url = URL(string: "https://pickleballbrackets.com/ptD.aspx?eid=b2451dc8-8ae3-4426-a5c8-b049535983dd") {
                            UIApplication.shared.open(url)
                        }
                    })
                    {
                        Text("Register")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .clipped()
                            .padding(.vertical)
                            .background(
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .foregroundColor(.cyan)
                            )
                            .padding(.horizontal)
                            .foregroundColor(.white)
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .clipped()
        }
    }
}


#Preview {
    NolaDetailView()
}
