//
//  ContentView.swift
//  DiceBasketBall
//
//  Created by Ravindu Lasantha on 2023-04-29.
//

import SwiftUI

struct ContentView: View {

    var columns:[GridItem] = Array(repeating: GridItem(.flexible()), count: 4)

    var body: some View {
        /*VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
        }
        .padding()*/

        LazyVGrid(columns: columns){
            
            let data = getData()
            
            ForEach(0..<data.count, id: \.self){ i in
                let row = data[i]
                Text(row[0])
                Text(row[1])
                Text(row[2])
                Text(row[3])
            }
            
        }

    }
    
    func getData() -> [[String]]{
        
        let header = ["Quarter","3pts","2pts","Total"]
        
        let quater1 = ["1","3","1","11"]
        
        let quater2 = ["2","0","0","0"]
        
        let quater3 = ["3","0","0","0"]
        
        let quater4 = ["4","0","0","0"]
        
        let footer = ["Score","11"]
        
        var data:[[String]] { return [
            header,
            quater1,
            quater2,
            quater3,
            quater4,
            footer,
        ]}
        return data
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
