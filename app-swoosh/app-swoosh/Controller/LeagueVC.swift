//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Kunal Tyagi on 19/10/17.
//  Copyright © 2017 Kunal Tyagi. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player : Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        nextBtn.isEnabled = false
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var nextBtn: BorderButton!
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }

    @IBAction func onMenTapped(_ sender: Any) {
        selectedLeague(leagueType: "Men")
    }
    @IBAction func onWomenTapped(_ sender: Any) {
        selectedLeague(leagueType: "Women")
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        selectedLeague(leagueType: "Coed")
    }
    
    func selectedLeague(leagueType: String)
    {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    /*
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
