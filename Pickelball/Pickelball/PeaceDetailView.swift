//  PeaceDetailView.swift
//  Pickelball
//  Created by Spencer Jones on 3/30/24.

import SwiftUI


// Peace Love & Pickleball Tournament Event
struct PeaceDetailView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                VStack(spacing: 6) {
                    // MARK: WELCOME
                    Text("Welcome to the Peace, Love and Pickleball Tournament!")
                        .padding(.top)
                        .clipped()
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.32, green: 0.67, blue: 0.866))
                        .padding(.bottom, -10)
                }
                .padding()
                
                VStack {}
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .frame(height: 500)
                    .clipped()
                    .background {
                        // MARK: FLYER
                        Image("peace")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 300.0, height: 500.0)
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
                    Text("$75")
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
                        Text("Friday, September 13th:")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text("Women's Doubles and Men's Doubles")
                            .multilineTextAlignment(.leading)
                    }
                    Spacer()
                    
                    VStack {
                        Text("Saturday, September 14th:")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text("Mixed Doubles")
                            .multilineTextAlignment(.center)
                    }
                    Spacer()
                    
                    VStack {
                        Text("Sunday, September 15th:")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text("Co-Ed Open Division Round Robin")
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
                            Spacer()
                            PrizeView(title: "1st", amount: "$1000 Per Team", color: .yellow)
                            Spacer()
                            PrizeView(title: "2nd", amount: "$500 Per Team", color: .gray)
                            Spacer()
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
                            
                            Text("1895 Veterans Park Drive Naples, FL")
                                .padding(.bottom)
                        }
                        
                        HStack {
                            Text("Surface Type:")
                                .fontWeight(.bold)
                            Text("Pickleball Hardcourt Surface")
                        }
                        
                        HStack {
                            Text("Play Area Type:")
                                .fontWeight(.bold)
                            Text("Outdoor Non-Covered")
                        }
                        
                        HStack {
                            Text("Net Type:")
                                .fontWeight(.bold)
                            Text("Permanent & Portable")
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
                    
                    // MARK: Cost Information
                    VStack {
                        Text("Current Cost")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        HStack{
                            Text("Registration Fee:")
                                .font(.title2)
                            Text("$75 USD")
                                .font(.title2)
                        }
                        
                        HStack{
                            Text("Each Event (Fri/Sat):")
                                .font(.title2)
                            Text("$15 USD")
                                .font(.title2)
                        }
                        
                        HStack{
                            Text("Sunday:")
                                .font(.title2)
                            Text("$100 USD Per Person")
                                .font(.title2)
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
                        
                        Text("Full refunds will be issued minus a $20.00 processing fee deadline of May 1st, 2024 There will be no refunds after August 1st, 2024.")
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }
                    Spacer()
                    Divider()
                    Spacer()
                    
                    // MARK: REGISTER BUTTON
                    Button(action: {
                        if let url = URL(string: "https://pickleballbrackets.com/ptD.aspx?eid=b582019b-6880-47f4-be0a-adfc9c790f00") {
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
    PeaceDetailView()
}
