//
//  DetailViewController.swift
//  SEI
//
//  Created by Joao Costa on 11/02/16.
//  Copyright © 2016 Joao Costa. All rights reserved.
//

import UIKit
import SwiftyJSON

class DetailViewController: UITableViewController {
	let titles: [Int:String]	= [0:"Atividade",1:"Horário",2:"Local",3:"Descrição"]
	var json: [String: JSON]?	= Dictionary<String,JSON>?()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	// MARK: - Table view data source
	
	override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		if json != nil { return 4 }
		return 0
	}
	
	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}
	
	override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		return titles[section]
	}
	
	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier("DetailCell", forIndexPath: indexPath)
		
		switch (indexPath.section) {
		case 0:
			cell.textLabel?.numberOfLines	= 0
			cell.textLabel?.text					= json!["name"]!.string!
		case 1:		cell.textLabel?.text	= json!["time"]!.string!
		case 2:		cell.textLabel?.text	= json!["place"]!.string!
		default:
			cell.textLabel?.numberOfLines	= 0
			cell.textLabel?.text					= json!["text"]!.string!
		}
		
		return cell
	}
	
	/*
	// Override to support conditional editing of the table view.
	override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
	// Return false if you do not want the specified item to be editable.
	return true
	}
	*/
	
	/*
	// Override to support editing the table view.
	override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
	if editingStyle == .Delete {
	// Delete the row from the data source
	tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
	} else if editingStyle == .Insert {
	// Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
	}    
	}
	*/
	
	/*
	// Override to support rearranging the table view.
	override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
	
	}
	*/
	
	/*
	// Override to support conditional rearranging of the table view.
	override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
	// Return false if you do not want the item to be re-orderable.
	return true
	}
	*/
	
	/*
	// MARK: - Navigation
	
	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
	// Get the new view controller using segue.destinationViewController.
	// Pass the selected object to the new view controller.
	}
	*/
	
}