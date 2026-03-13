//
//  ViewController.swift
//  ImageAnimation
//
//  Created by Disha Limbani on 18/03/22.
//

import UIKit

class ViewController: UIViewController {
//MARK:- OUTLETS
    
    @IBOutlet weak var imgViewAnimation: UIImageView!
    @IBOutlet weak var btnAnimation: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //MAEK:- MRHTODS
    func animatedImage(for name: String) -> [UIImage]{
        var i = 0
        var images = [UIImage]()
        
        
        while let image = UIImage(named: "\(name)/\(i)"){
            images.append(image)
            i += 1
        }
        return images
    }
    //MARK:- ACTIONS
    @IBAction func onClickBtnAnimation(_ sender: UIButton) {
        imgViewAnimation.animationImages = animatedImage(for: "GirlRunning")
        imgViewAnimation.animationDuration = 0.9
        imgViewAnimation.animationRepeatCount = 2
        imgViewAnimation.image = imgViewAnimation.animationImages?.first
        imgViewAnimation.startAnimating()
    }
    
}

