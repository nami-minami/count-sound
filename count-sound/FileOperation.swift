//
//  FileOperation.swift
//  count-sound
//
//  Created by 南奈弥 on 2023/07/05.
//

import Foundation

class FileOperation {
    private let fileManager = FileManager.default
    
    func getFile(_ url: URL) -> [URL] {
        do {
            let fileUrls = try fileManager.contentsOfDirectory(at: url, includingPropertiesForKeys: nil)
            return fileUrls
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
}
