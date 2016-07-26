/*
 
 Errors.swift
 
 CotEditor
 https://coteditor.com
 
 Created by 1024jp on 2016-01-03.
 
 ------------------------------------------------------------------------------
 
 © 2014-2016 1024jp
 
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

import Foundation

enum CotEditorError: Int {
    
    static let domain = "com.coteditor.CotEditor.ErrorDomain"
    
    
    // general
    case invalidName = 1000
    case scriptNoTargetDocument
    case fileReadTooLarge
    case fileReadBinaryFile
    
    // encoding
    case IANACharsetNameConflict = 1100
    case unconvertibleCharacters
    case reinterpretationFailed
    case lossyEncodingConversion
    
    // text finder
    case regularExpression = 1200
    
    // setting manager
    case settingDeletionFailed = 1300
    case settingImportFailed
    case settingImportFileDuplicated
    
    // key binding manager
    case invalidKeySpecCharacters = 1400
    
    // for command-line tool installer
    case applicationNotInApplicationDirectory = 1500
    case applicationNameIsModified
    case ymlinkCreationDenied
    
}