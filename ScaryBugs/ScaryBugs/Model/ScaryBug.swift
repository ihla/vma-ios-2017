/*
 * Copyright (c) 2015 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */


import UIKit

enum ScaryFactor {
  case notScary
  case aLittleScary
  case averageScary
  case quiteScary
  case Aiiiiieeeee
}

extension ScaryFactor {
    var description: String {
        switch(self) {
        case .notScary:
            return "Not scary"
        case .aLittleScary:
            return "A little scary"
        case .averageScary:
            return "Average scariness"
        case .quiteScary:
            return "Quite scary"
        case .Aiiiiieeeee:
            return "AIIIIIEEEEEEE!!"
        }
    }
}

struct ScaryBug {
  
  var name: String
  var image: UIImage?
  var howScary: ScaryFactor
  
  static func bugs() -> [ScaryBug] {
    var bugs = [ScaryBug]()
    bugs.append(ScaryBug(name: "Centipede", image: #imageLiteral(resourceName: "centipede"), howScary: .averageScary))
    bugs.append(ScaryBug(name: "Ladybug", image: #imageLiteral(resourceName: "ladybug"), howScary: .notScary))
    bugs.append(ScaryBug(name: "Potato Bug", image: #imageLiteral(resourceName: "potatoBug"), howScary: .quiteScary))
    bugs.append(ScaryBug(name: "Wolf Spider", image: #imageLiteral(resourceName: "wolfSpider"), howScary: .Aiiiiieeeee))
    bugs.append(ScaryBug(name: "Bee", image: #imageLiteral(resourceName: "bee"), howScary: .quiteScary))
    bugs.append(ScaryBug(name: "Beetle", image: #imageLiteral(resourceName: "beetle"), howScary: .aLittleScary))
    bugs.append(ScaryBug(name: "Burrito Insect", image: #imageLiteral(resourceName: "burritoInsect"), howScary: .averageScary))
    bugs.append(ScaryBug(name: "Caterpillar", image: #imageLiteral(resourceName: "caterpillar"), howScary: .notScary))
    bugs.append(ScaryBug(name: "Cicada", image: #imageLiteral(resourceName: "cicada"), howScary: .averageScary))
    bugs.append(ScaryBug(name: "Cockroach", image: #imageLiteral(resourceName: "cockroach"), howScary: .quiteScary))
    bugs.append(ScaryBug(name: "Exoskeleton", image: #imageLiteral(resourceName: "exoskeleton"), howScary: .quiteScary))
    bugs.append(ScaryBug(name: "Fly", image: #imageLiteral(resourceName: "fly"), howScary: .notScary))
    bugs.append(ScaryBug(name: "Giant Moth", image: #imageLiteral(resourceName: "giantMoth"), howScary: .averageScary))
    bugs.append(ScaryBug(name: "Grasshopper", image: #imageLiteral(resourceName: "grasshopper"), howScary: .Aiiiiieeeee))
    bugs.append(ScaryBug(name: "Mosquito", image: #imageLiteral(resourceName: "mosquito"), howScary: .quiteScary))
    bugs.append(ScaryBug(name: "Praying Mantis", image: #imageLiteral(resourceName: "prayingMantis"), howScary: .notScary))
    bugs.append(ScaryBug(name: "Roach", image: #imageLiteral(resourceName: "roach"), howScary: .quiteScary))
    bugs.append(ScaryBug(name: "Robber Fly", image: #imageLiteral(resourceName: "robberFly"), howScary: .quiteScary))
    bugs.append(ScaryBug(name: "Scorpion", image: #imageLiteral(resourceName: "scorpion"), howScary: .Aiiiiieeeee))
    bugs.append(ScaryBug(name: "Shield Bug", image: #imageLiteral(resourceName: "shieldBug"), howScary: .averageScary))
    bugs.append(ScaryBug(name: "Stag Beetle", image: #imageLiteral(resourceName: "stagBeetle"), howScary: .averageScary))
    bugs.append(ScaryBug(name: "Stink Bug", image: #imageLiteral(resourceName: "stinkbug"), howScary: .aLittleScary))
    return bugs
  }
  
}
