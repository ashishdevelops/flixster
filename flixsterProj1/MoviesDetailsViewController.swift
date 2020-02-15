//
//  MoviesDetailsViewController.swift
//  flixsterProj1
//
//  Created by Ashish Patel on 2/14/20.
//  Copyright © 2020 Ashish. All rights reserved.
//

import UIKit
import AlamofireImage

class MoviesDetailsViewController: UIViewController {

    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var synopLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = movie["title"] as! String
        synopLabel.text = movie["overview"] as! String
        
        let baseURL = "https://image.tmdb.org/t/p/w300/"
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: baseURL+posterPath)
        
        posterView.af_setImage(withURL: posterURL!)
        
        
        let backPath = movie["backdrop_path"] as! String
        let backURL = URL(string: "https://image.tmdb.org/t/p/w780/"+backPath)
        
        backdropView.af_setImage(withURL: backURL!)
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
