//
//  ABucketListMust.swift
//  Pickelball
//
//  Created by Spencer Jones on 4/4/24.
//

import SwiftUI

struct ABucketListMust: View {
    var body: some View {
        VStack {

            ScrollView {
                VStack {
                    Group {
                        // Header
                        VStack {
                            Spacer()
                            // Headline
                            Text("Tournaments \"A Bucket List Must\"")
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .clipped()
                                .fixedSize(horizontal: false, vertical: true)
                                .padding(.leading)
                                .font(.system(.title, design: .serif, weight: .regular))
                                .lineSpacing(3)
                                .foregroundColor(.primary)
                            
//                            // Subheading
//                            Text("")
//                                .frame(maxWidth: .infinity, alignment: .leading)
//                                .clipped()
//                                .fixedSize(horizontal: false, vertical: true)
//                                .padding(.horizontal, 24)
//                                .font(.system(.headline, design: .serif, weight: .regular))
//                                .lineSpacing(6)
//                                .foregroundColor(.primary)
                        }
//                        .padding(.top, 12)
//                        Spacer()
                     
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 24)
                        .padding(.vertical, 12)
                        .padding(.bottom, 3)
                        Image("nf2")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        // Image Description
                        Text("A spacious indoor pickleball court with a net and a sign, set up for the NOLA Picklefest Pickleball Tournament.")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .clipped()
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.horizontal, 24)
                            .padding(.top, 4)
                            .font(.system(.footnote, design: .serif, weight: .regular))
                            .lineSpacing(5)
                            .foregroundColor(.secondary)
                        VStack(alignment: .leading) {
                            HStack {
                                Text("By")
                                    .font(.system(.subheadline, weight: .medium))
                                Spacer()
                                    .frame(width: 4)
                                    .clipped()
                                // Author
                                Text("Linda Naylor")
                                    .underline()
                                    .font(.system(.subheadline, weight: .medium))
                            }
                            .multilineTextAlignment(.leading)
                            Spacer()
                                .frame(height: 5)
                                .clipped()
                            // Publication / Update Date
                            Text("Published Feburary 1, 2023")
                                .font(.system(.footnote, weight: .regular))
                                .foregroundColor(.secondary)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .clipped()
                        .padding(.horizontal, 24)
                        .padding(.vertical)
                        // Body
                        Text("Let’s face it, most of us are not spring chickens. The last time we properly or officially competed in a sport was probably so many years ago, we would like to skip the just how long ago it was. “Back in the 1900s” is how that story would start. Yes, we had glory days of winning and being at top of our athletic game ... but those stories have gained a little dust. We have accepted that chapter is over….but what if it wasn’t? \n \nWe love pickleball, there is no doubt about that ... but, at what level do we want to be competitive? For many, the social aspect of this sport is enough.  It’s a hobby that checks many boxes of our busy lives. We make friends, wear cool outfits, and show off our newest paddle. For others, it awakens something ... something that we may have thought retired ... a fire ... something to prove to ourselves…it awakens our inner competitor ... and we love it.")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .clipped()
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.horizontal, 24)
                            .padding(.bottom, 24)
                            .font(.system(.headline, design: .serif, weight: .regular))
                            .lineSpacing(6)
                            .foregroundColor(.primary)
                        Image("pp5")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        // Image Description
                        Text("A male pickleball player in action on a blue pickleball court, ready to strike the ball holding his pickleball paddle behind a JOOLA labeled pickleball net.")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .clipped()
                            .padding(.horizontal, 24)
                            .font(.system(.footnote, design: .serif, weight: .regular))
                            .foregroundColor(.secondary)
                            .fixedSize(horizontal: false, vertical: true)
                            .font(.body)
                            .lineSpacing(5)
                            .padding(.top, 4)
                        // Body
                        Text("A tournament is the kind of challenge that appeals to those who believe in setting goals, big and small. For me, I only can enjoy something that has purpose. In the beginning, the purpose was to get in shape. The second act of my life was going to come with the normal medical prevention that I had ignored while galivanting around in my younger years. It caught up and pickleball was going to be a way for me to take back control of my health. Then, I wanted to play at an advanced level. It is who I am, I have to be at least respected in what I do.Then, I wanted to beat one specific person at my local courts (we all have one person we want to take down). The need for this made me take lessons…and once I was financially invested in professional training (that may be a stretch), I had something to prove. As we grow as players, the next natural step is to test that growth, no matter where we are on our journey to reach our set goal. Simply participating in a tournament reaches many player’s goals. As a coach, I often am asked how a player knows he or she is ready to try a tournament. My advice is always the same ... go for it! You have nothing to lose except the actual matches (minor detail), but everything to gain. Your first tournament is filled with excitement and a positive anxiety that encourages you to try our best. It brings out a level of effort that recreational play cannot. Each point matters and you start to see the need for strategy ... the need to have an arsenal of shots ... the need for control. The game comes to life in a way that you have not experienced at your local courts ... it starts to matter. It is the bigging of your biggest growth yet as a player.")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .clipped()
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.horizontal, 24)
                            .padding(.top, 20)
                            .padding(.bottom, 24)
                            .font(.system(.headline, design: .serif, weight: .regular))
                            .lineSpacing(6)
                            .foregroundColor(.primary)
                    }
                    Group {
                        Image("pp4")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        // Image Description
                        Text("Two men playing pickleball on a blue pickleball court, one in action awaiting his chance to hit the ball.")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .clipped()
                            .padding(.horizontal, 24)
                            .font(.system(.footnote, design: .serif, weight: .regular))
                            .foregroundColor(.secondary)
                            .fixedSize(horizontal: false, vertical: true)
                            .font(.body)
                            .lineSpacing(5)
                            .padding(.top, 4)
                        // Body
                        Text("Then, there is the entire atmosphere of a tournament ... it is infectious ... and dare I say, FUN! You are surrounded by your people. Even if you are not a hard-core competitor, the environment has something to offer everyone. Many players think the only goal of a tournament is to win. That is the obvious goal, yes, but many find it to be the perfect environment to network. Personally, I think it is the absolute best place to find future tournament partners, learn about new products, and see where our amazing sport is going. The matching outfits, the music, the promise of an after-play cocktail ... these tournaments start to become how you plan your next vacation ... after all, there is being hosted somewhere every weekend.  If you were to ask me what I love the most in the world of pickleball, I would say most of my amazing memories occurred at a tournament. These players become a second family, much like my home courts did. You meet people from all over, at all skill level, and you are bonded by the love of this sport ... our sport. \n \nTo top it, you get to watch the best of best play. As we watch the high level or even pro brackets, we confirm that we play just like them and we show our support as their peer (insert comical laugh here). We learn from a level that may not be readily available at our local courts to view. Of course, this makes us even more addicted as new goals are born. We watch their every move hoping to mimic them in our upcoming matches. \n \nWhether you are a newer player or a player that has enjoyed recreational play only for years, adding a tournament to your bucket list is a must. You might just find yourself a year from now traveling the country in your RV from tournament to tournament ... and it all started with taking that first leap. \n \nTournaments offer so many dynamics that social play does not…the first and most obvious is a medal! You would be lying to yourself if you said a medal is not important ... we all know that bling hanging around your neck makes you stand a little taller.  We walk around post award ceremony acting as if we were the Gladiator that won the day. We beam of pride for the efforts we put into capturing this honor.")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .clipped()
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.horizontal, 24)
                            .padding(.top, 20)
                            .padding(.bottom, 56)
                            .font(.system(.headline, design: .serif, weight: .regular))
                            .lineSpacing(6)
                            .foregroundColor(.primary)
                    }
                }
            }
        }
    }
}

#Preview {
    ABucketListMust()
}
