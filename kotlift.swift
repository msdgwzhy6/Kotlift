import Foundation

extension Array {
  var size: Int { return self.count }
  mutating func add(element: Element) {
    self.append(element)
  }
  mutating func addAll(other: Array) {
    for element in other {
      self.append(element)
    }
  }
}

extension Dictionary {
  var size: Int { return self.count }
  mutating func put(key: Key, _ value: Value) {
    self[key] = value
  }
  mutating func putAll(other: Dictionary) {
    for (key, value) in other {
      self.updateValue(value, forKey: key)
    }
  }
  func isEmpty() -> Bool {
    return self.isEmpty
  }
  mutating func remove(key: Key) -> Value? {
    return self.removeValueForKey(key)
  }
}

extension Set {
  var size: Int { return self.count }
  mutating func add(element: Element) {
    self.insert(element)
  }
  mutating func addAll(other: Set) {
    for element in other {
      self.insert(element)
    }
  }
  func isEmpty() -> Bool {
    return self.isEmpty
  }
}

extension String {
  var length: Int { return characters.count }
  
  func substring(startIndex: Int, endIndex: Int) -> String {
    let start = self.startIndex.advancedBy(startIndex)
    let end = self.startIndex.advancedBy(endIndex)
    return self.substringWithRange(Range<String.Index>(start: start, end: end))
  }
  
  func contains(string: String) -> Bool {
    return self.rangeOfString(string) != nil
  }

  func replace(target: String, _ withString: String) -> String {
    return self.stringByReplacingOccurrencesOfString(target, withString: withString,
      options: NSStringCompareOptions.LiteralSearch, range: nil)
  }
}

enum Exception: ErrorType {
  case NumberFormat
}

class Integer {
  static func parseInt(str: String) throws -> Int {
    if let intVal = Int(str) {
      return intVal
    }
    throw Exception.NumberFormat
  }
}

class System {
  static func currentTimeMillis() -> Int64 {
    return (Int64) (NSDate().timeIntervalSince1970 * 100.0)
  }
}

func / (lhs: Double, rhs: Int) -> Double {
  return Double(lhs) / Double(rhs)
}

func / (lhs: Int, rhs: Double) -> Double {
  return Double(lhs) / Double(rhs)
}

protocol Addable {}
extension Int: Addable {}
extension Double: Addable {}


func + (a: Int, b: Double) -> Double {
  return Double(a) + b
}
func + (a: Double, b: Int) -> Double {
  return Double(b) + a
}

func + (a: Int64, b: Double) -> Double {
  return Double(a) + b
}
func + (a: Double, b: Int64) -> Double {
  return Double(b) + a
}

func + (a: Int32, b: Double) -> Double {
  return Double(a) + b
}
func + (a: Double, b: Int32) -> Double {
  return Double(b) + a
}

func + (a: Int16, b: Double) -> Double {
  return Double(a) + b
}
func + (a: Double, b: Int16) -> Double {
  return Double(b) + a
}

func + (a: Int8, b: Double) -> Double {
  return Double(a) + b
}
func + (a: Double, b: Int8) -> Double {
  return Double(b) + a
}

func == (a: Int32, b: Int) -> Bool {
  return Int(a) == b
}
func == (a: Int, b: Int32) -> Bool {
  return Int(b) == a
}

func == (a: Int32, b: Int64) -> Bool {
  return Int64(a) == b
}
func == (a: Int64, b: Int32) -> Bool {
  return Int64(b) == a
}

func == (a: Int, b: Int64) -> Bool {
  return Int64(a) == b
}
func == (a: Int64, b: Int) -> Bool {
  return Int64(b) == a
}

func != (a: Int32, b: Int) -> Bool {
  return Int(a) != b
}
func != (a: Int, b: Int32) -> Bool {
  return Int(b) != a
}

func != (a: Int32, b: Int64) -> Bool {
  return Int64(a) != b
}
func != (a: Int64, b: Int32) -> Bool {
  return Int64(b) != a
}

func != (a: Int, b: Int64) -> Bool {
  return Int64(a) != b
}
func != (a: Int64, b: Int) -> Bool {
  return Int64(b) != a
}
