//
//  Highlightable.swift
//  Katana
//
//  Created by Mauro Bolis on 31/10/2016.
//  Copyright © 2016 Bending Spoons. All rights reserved.
//

import Foundation
import Katana

public protocol Highlightable {
  var highlighted: Bool { get set }
}

public struct EmptyHighlightableState: NodeDescriptionState, Highlightable {
  public var highlighted: Bool
  
  public init() {
    self.highlighted = false
  }
  
  public init(highlighted: Bool) {
    self.highlighted = highlighted
  }
  
  public static func == (lhs: EmptyHighlightableState, rhs: EmptyHighlightableState) -> Bool {
    return lhs.highlighted == rhs.highlighted
  }
}