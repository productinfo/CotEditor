/*
 
 Constants.swift
 
 CotEditor
 https://coteditor.com
 
 Created by 1024jp on 2016-06-25.
 
 ------------------------------------------------------------------------------
 
 © 2016 1024jp
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 
 */

import AudioToolbox

// labels for system sound ID on AudioToolbox (There are no constants provided by Apple)
extension SystemSoundID {
    static let moveToTrash = SystemSoundID(0x10)
}


extension String {
    /// constant string representing a separator
    static let separator = "-"
}


extension String.Encoding {
    /// original special encoding type
    static let autoDetection = String.Encoding(rawValue: 0)
}

extension NSNumber {
    @nonobjc static let no = NSNumber(value: false)
    @nonobjc static let yes = NSNumber(value: true)
}

/**
 Modify number to be within max/min values.
 
 - parameters:
    - minimum: Condition which passed-in value should not smaller than.
    - value  : Value to modify.
    - maximum: Condition which passed-in value should not larger than.
 
 - returns: Processed value.
 */ 
func within<T: Comparable>(_ minimum: T, _ value: T, _ maximum: T) -> T {
    return max(minimum, min(value, maximum))
}


/// debug friendly print with a dog.
func moof(_ items: Any..., function: String = #function) {
    Swift.print("🐕 \(function): ", terminator: "")
    Swift.debugPrint(items)
}
