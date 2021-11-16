//
//  TableViewController.swift
//  TrackList
//
//  Created by kristians.tide on 16/11/2021.
//

import UIKit

class TrackTableViewController: UITableViewController {

//    var trackList = [
//            "Carly Rae Japsen - Dedicated",
//            "Dj Khaled - father of",
//            "Injury Reserve - Jailbrake",
//            "Jonas Brothers - Happiness Begins ",
//            "Joyner Lucas - adhd",
//            "Maluma - 11-11",
//            "Never Young - LOSER",
//            "Rammstein - rammstein",
//            "Skepta - Ignorance Is Bliss",
//            "Skillet - Victory",
//            "Tylor the Creator - IGOR",
//            "YG - Stop Snitching",
//        ]
    
    var songs = Song.createSong()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return songs.count // makes the number of rows as many as the items in the array above
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackListCell", for: indexPath)

//        cell.textLabel?.text = trackList[indexPath.row]
//        cell.detailTextLabel?.text = trackList[indexPath.row]
//        cell.imageView?.image = UIImage(named: trackList[indexPath.row]) // works because the array has identical name as the image
        let songs = songs[indexPath.row]
        cell.textLabel?.text = songs.track
        cell.detailTextLabel?.text = songs.album
        cell.imageView?.image = UIImage(named: songs.cover)
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
        // makes the items larger in the list!
    }

    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
//     MARK: - Navigation

//     In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
    if let indexPath = tableView.indexPathForSelectedRow {
        print("Index path:", indexPath)
    
    
    
//         Get the new view controller using segue.destination.
        let detaiVC = segue.destination as! DetailViewController
//         Pass the selected object to the new view controller.
        detaiVC.song = songs[indexPath.row]
            }
        }
}
