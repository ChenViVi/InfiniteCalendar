//
//  ICTimeHeader.swift
//  InfiniteCalendarView
//
//  Created by Shohe Ohtani on 2022/03/23.
//

import SwiftUI


// MARK: TimeHeaderBackground
public extension ICDefaultComponent {
    class TimeHeaderBackground: ICTimeHeaderBackground<D_TimeHeaderBackgroundView> {
        override init(frame: CGRect) {
            super.init(frame: frame)
            setup(item: ICContentBackgroundItem())
        }
    }
    
    struct D_TimeHeaderBackgroundView: ICTimeHeaderBackgroundView {
        public typealias Item = ICContentBackgroundItem
        var item: Item
        
        public init(_ item: Item) {
            self.item = item
        }
        
        public var body: some View {
            HStack(spacing: 0) {
                item.color
                Rectangle()
                    .frame(width: 0.5)
                    .foregroundColor(Color.gray.opacity(0.3))
            }
        }
    }
}
