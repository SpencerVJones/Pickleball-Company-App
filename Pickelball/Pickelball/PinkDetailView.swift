//  PinkDetailView.swift
//  Pickelball
//  Created by Spencer Jones on 3/30/24.

import SwiftUI


// Pink Out Tournament Event
struct PinkDetailView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                VStack(spacing: 6) {
                    // MARK: WELCOME
                    Text("Welcome to the Pink Out Pickleball Tournament!!")
                        .padding(.top)
                        .clipped()
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.32, green: 0.67, blue: 0.866))
                        .padding(.bottom, -15)
                }
                .padding()
                
                VStack {}
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .frame(height: 500)
                    .clipped()
                    .background {
                        // MARK: FLYER
                        Image("pink")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .padding()
                            .frame(width: 300.0, height: 500)
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
                    Text("$85")
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
                        Text("Friday, October 18th:")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text("Men's and Women's Doubles")
                            .multilineTextAlignment(.leading)
                    }
                    Spacer()
                    
                    VStack {
                        Text("Saturday, October 19th:")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text("Mixed Doubles")
                            .multilineTextAlignment(.center)
                    }
                    Spacer()
                    
                    VStack {
                        Text("Sunday, October 20th:")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text("Co-ed Open Division Round Robin")
                            .multilineTextAlignment(.center)
                    }
                    Spacer()
                    Divider()
                    Spacer()
                    
                    // MARK: Prizes
                    VStack {
                        Text("Prizes")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.top)
                        
                        HStack(spacing: 20) {
                            PrizeView(title: "Gold", amount: "$1000 Per Team", color: .yellow)
                            PrizeView(title: "Silver", amount: "$500 Per Team", color: .gray)
                            PrizeView(title: "Bronze", amount: "$200 Per Team", color: .brown)
                        }
                        .padding(.horizontal)
                    }
                    Spacer()
                    Divider()
                    Spacer()
                    
                    
                    VStack {
                        // MARK: Venue Information
                        Text("Venue Information")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.top)
                        
                        HStack {
                            Image(systemName: "mappin.and.ellipse")
                                .foregroundColor(.blue)
                                .padding([.bottom, .trailing])
                                .frame(width: 15.0, height: 15.0)
                                .font(.title)
                            
                            Text("5502 33rd Avenue Drive West Bradenton, FL")
                                .padding(.bottom)
                        }
                        
                        HStack {
                            Text("Surface Type: Pickleball Hardcourt Surface")
                                .fontWeight(.bold)
                            Text("")
                        }
                        
                        HStack {
                            Text("Play Area Type:")
                                .fontWeight(.bold)
                            Text("Outdoor Covered")
                        }
                        
                        HStack {
                            Text("Net Type:")
                                .fontWeight(.bold)
                            Text("Permanent")
                        }
                        
                        HStack {
                            Text("Ball Used:")
                                .fontWeight(.bold)
                            Text("JOOLA Heleus")
                        }
                        
                        HStack {
                            Text("Number of Courts:")
                                .fontWeight(.bold)
                            Text("14")
                        }
                        
                        HStack {
                            Text("Parking:")
                                .fontWeight(.bold)
                            Text("No Fee")
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
                        
                        Text("Refunds will be available if withdrawn by January 31st, 2024 minus a $15 system processing fee.")
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                        
                    }
                    
                    // MARK: REGISTER BUTTON
                    Button(action: {
                        if let url = URL(string: "https://pickleballbrackets.com/ptD.aspx?eid=1c13869a-5a46-4ac8-bd9b-ed57c9739218") {
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
    PinkDetailView()
}
