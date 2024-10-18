//
//  ContentView.swift
//  Week5-Kwandy
//
//  Created by student on 18/10/24.
//

import SwiftUI

struct ContentView: View {
    let emoji = ["🇧🇾", "🇷🇺", "🇦🇹", "🇩🇪", "🇨🇿", "🇮🇹", "🇬🇧", "🇺🇸", "🇫🇷", "🇪🇸", "🇵🇹", "🇦🇺", "🇳🇿", "🇨🇦", "🇮🇳", "🇬🇷", "🇸🇦", "🇦🇪", "🇸🇬", "🇰🇷", "🇸🇻", "🇦🇷", "🇧🇷", "🇨🇳", "🇲🇽", "🇹🇭", "🇯🇵", "🇰🇪", "🇨🇭", "🇹🇷", "🇬🇮", "🇻🇳", "🇿🇦"]
    let emojiNames = [
        "Belarus", "Russia", "Austria", "Germany", "Czech Republic",
        "Italy", "United Kingdom", "United States", "France",
        "Spain", "Portugal", "Australia", "New Zealand", "Canada",
        "India", "Greece", "Saudi Arabia", "United Arab Emirates",
        "Singapore", "South Korea", "El Salvador", "Argentina",
        "Brazil", "China", "Mexico", "Thailand", "Japan",
        "Kenya", "Switzerland", "Turkey", "Gibraltar", "Vietnam",
        "South Africa"
    ];
    @State var flag = "🇺🇸"
    var body: some View {
        NavigationStack {
                Section{
                    Text(flag)
                    .font(.system(size: 350))
                    .padding()
                }
                Section{
                    Button("GO"){
                        flag = emoji.randomElement()!
                    }
                    .font(.largeTitle)
                    .padding()
                }
            Section{
                if let index = emoji.firstIndex(of: flag) {
                                    Text("Welcome to \(emojiNames[index])")
                                } else {
                                    Text("Country not found")
                                }
            }
        }
    }
}

#Preview {
    ContentView()
}
