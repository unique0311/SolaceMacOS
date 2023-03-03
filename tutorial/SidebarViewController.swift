//
//  SidebarViewController.swift
//  tutorial
//
//  Created by Rome on 2/23/23.
//

import Cocoa

class SidebarViewController: NSViewController {
    
    private enum SidebarItemType: Int {
        case header, expandableRow, row
    }
    
    private enum SidebarSection: Int {
        case library, collections
    }
    
    private struct SidebarItem: Hashable, Identifiable {
        let id: UUID
        let type: SidebarItemType
        let title: String
        let subtitle: String?
        let image: UIImage?
    }
    
    static func header(title: String, id: UUID = UUID()) -> Self {
        return SidebarItem(id: id, type: .header, title: title, subtitle: nil, image: nil)
    }
    
    static func expandableRow(title: String, subtitle: String?, image: UIImage?, id: UUID = UUID()) -> Self {
        return SidebarItem(id: id, type: .expandable)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    
}
