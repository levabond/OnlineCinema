//
//  BottomBar.swift
//  OnlineCinema
//
//  Created by Лев Бондаренко on 11.03.2024.
//

import SwiftUI

@resultBuilder
public struct BarBuilder{}

public extension BarBuilder{
    static func buildBlock(_ items: BottomBarItem...) -> [BottomBarItem]{
        items
    }
}

public struct BottomBarItem {
    public let icon: Image
    public let title: String
    public let color: Color
    
    public init(icon: Image,
                title: String,
                color: Color){
        self.icon = icon
        self.title = title
        self.color = color
    }
    
    public init(icon: String,
                title: String,
                color: Color) {
        self = BottomBarItem(icon: Image(systemName: icon),
                             title: title,
                             color: color)
    }
}

public struct BottomBar : View {
    @Binding public var selectedIndex: Int
    
    public let items: [BottomBarItem]
    
    public init(selectedIndex: Binding<Int>, items: [BottomBarItem]) {
        self._selectedIndex = selectedIndex
        self.items = items
    }
    
    
    public init(selectedIndex: Binding<Int>, @BarBuilder items: () -> [BottomBarItem]){
        self = BottomBar(selectedIndex: selectedIndex,
                         items: items())
    }
    
    
    public init(selectedIndex: Binding<Int>, item: BottomBarItem){
        self = BottomBar(selectedIndex: selectedIndex,
                         items: [item])
    }
    
    
    func itemView(at index: Int) -> some View {
        Button(action: {
            withAnimation { self.selectedIndex = index }
        }) {
            BottomBarItemView(selected: self.$selectedIndex,
                              index: index,
                              item: items[index])
        }
    }
    
    public var body: some View {
        HStack(alignment: .bottom) {
            ForEach(0..<items.count) { index in
                self.itemView(at: index)
                
                if index != self.items.count-1 {
                    Spacer()
                }
            }
        }
        .padding()
        .animation(.default, value: selectedIndex)
    }
}

public struct BottomBarItemView: View {
    @Binding var selected : Int
    public let index: Int
    public let item: BottomBarItem
    
    public var body: some View {
        HStack {
            item.icon
                .imageScale(.large)
                .foregroundColor(isSelected ? item.color : .primary)
            
            if isSelected {
                Text(item.title)
                    .foregroundColor(item.color)
                    .font(.caption)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
        }
        .padding()
        .background(
            Capsule()
                .fill(isSelected ? item.color.opacity(0.2) : Color.clear)
        )
    }
    
    var isSelected : Bool{
        selected == index
    }
    
}
