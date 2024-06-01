//  VeteransDetailView.swift
//  Pickelball
//  Created by Spencer Jones on 3/30/24.

import SwiftUI


// Veterans Open Tournament Event
struct VeteransDetailView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                VStack(spacing: 6) {
                    // MARK: WELCOME
                    Text("Welcome to the Veteran's Amateur Classic Pickleball Tournament!")
                        .padding(.top)
                        .clipped()
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.32, green: 0.67, blue: 0.866))
                        .padding(.bottom, -15.0)
                }
                .padding()
                
                VStack {}
                .frame(maxWidth: .infinity)
                .clipped()
                .frame(height: 500)
                .clipped()
                .background {
                    // MARK: FLYER
                    Image("vet")
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
                        Text("Friday, May 24th:")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text("Women's Doubles and Men's Doubles")
                            .multilineTextAlignment(.leading)
                    }
                    Spacer()
                    
                    VStack {
                        Text("Saturday, May 25th:")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text("Mixed Doubles")
                            .multilineTextAlignment(.center)
                    }
                    Spacer()
                    
                    VStack {
                        Text("Sunday, May 26th:")
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
                            PrizeView(title: "Gold", amount: "$1000 Per Team", color: .yellow)
                            PrizeView(title: "Silver", amount: "$500 Per Team", color: .gray)
                         
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
                    
                    
                    //MARK:  Refund information
                    VStack {
                        Text("Refund Policy")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        Text("Full refunds will be issued minus a $20.00 processing fee deadline of May 1st, 2024. There will be no refunds after May 1st, 2024.")
                            .padding(.horizontal)
                        Spacer()
                        
                        Text("Weather")
                            .font(.title)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                        
                        Text("No refunds due to weather. This is an outside event. Every effort will be made to continue play and complete all brackets even if delays happen.")
                            .padding(.horizontal)
                    }
                    Spacer()
                    Divider()
                    Spacer()
                    
                    
                    // MARK: REGISTER BUTTON
                    Button(action: {
                        if let url = URL(string: "https://pickleballbrackets.com/ptD.aspx?eid=ea68906c-2e47-4723-9795-0dc44530602d") {
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
    VeteransDetailView()
}
