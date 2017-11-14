//
//  PrettyIconTableViewController.swift
//  PrettyIcons
//
//  Created by Lubos Ilcik on 12/11/2017.
//  Copyright © 2017 Touch4It. All rights reserved.
//

import UIKit

class PrettyIconTableViewController: UITableViewController {
    
    var iconSets = IconSet.iconSets()

    override func viewDidLoad() {
        super.viewDidLoad()
        // enable large title behaviour
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        // enable edit button
        navigationItem.rightBarButtonItem = editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return iconSets.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return iconSets[section].icons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return iconSets[section].name
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IconCell", for: indexPath)

        let icon = iconSets[indexPath.section].icons[indexPath.row]
        cell.imageView?.image = icon.image
        cell.textLabel?.text = icon.title
        cell.detailTextLabel?.text = icon.subtitle

        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        guard editingStyle == .delete else { return }
        
        // update model
        let set = iconSets[indexPath.section]
        set.icons.remove(at: indexPath.row)
        // update table view
        //tableView.reloadData()
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }
    
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        // swap models
        let source = iconSets[sourceIndexPath.section].icons.remove(at: sourceIndexPath.row)
        iconSets[destinationIndexPath.section].icons.insert(source, at: destinationIndexPath.row)
    }
}


















