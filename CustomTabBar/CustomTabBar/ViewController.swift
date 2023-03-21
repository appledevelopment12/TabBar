//
//  ViewController.swift
//  CustomTabBar
//
//  Created by Rajeev on 20/03/23.
//

import UIKit

class ViewController: UIViewController
{
    
    
    @IBOutlet var contentView: UIView!
    @IBOutlet var viewfortab: UIView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
       designableTabBar()
        
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: false)
        {
            (timer) in  self.forhome()
        }
        
    }
    func  forhome()
    {
        guard  let Home = self.storyboard?.instantiateViewController(identifier: "HomeViewController") as? HomeViewController  else {return }
        contentView.addSubview(Home.view)
        Home.didMove(toParent: self)
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return  .lightContent
    }
    
    func designableTabBar()
    {
        viewfortab.layer.cornerRadius = viewfortab.frame.size.height / 2
        viewfortab.clipsToBounds = true
    }
    

    @IBAction func OnclicktabBar(_ sender: UIButton) {
        let tag = sender.tag
        print(tag)
        
        if tag == 1
        {

            forhome()
        }
        else if tag == 2
        {
            
                guard  let search = self.storyboard?.instantiateViewController(identifier: "searchViewController") as? searchViewController  else {return }
                contentView.addSubview(search.view)
                search.didMove(toParent: self)
                
            
        }
        else if tag == 3
        {
            
                guard  let camera = self.storyboard?.instantiateViewController(identifier: "cameraViewController") as? cameraViewController  else {return }
                contentView.addSubview(camera.view)
                camera.didMove(toParent: self)
                
            
        }
        else
        {
            
                guard  let profile = self.storyboard?.instantiateViewController(identifier: "profileViewController") as? profileViewController  else {return }
                contentView.addSubview(profile.view)
                profile.didMove(toParent: self)
                
        }
    }
    
    
    
    
}

