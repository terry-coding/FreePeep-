//
//  FaceViewController.swift
//  變臉遊戲
//
//  Created by 戴光晨 on 2024/8/2.
//

import UIKit

class FaceViewController: UIViewController {
    
    @IBOutlet weak var hairImageView: UIImageView!
    @IBOutlet weak var faceImageView: UIImageView!
    @IBOutlet weak var glassesImageView: UIImageView!
    @IBOutlet weak var shirtImageView: UIImageView!
    
    @IBOutlet weak var glassesView: UIView!
    @IBOutlet weak var faceView: UIView!
    @IBOutlet weak var hairView: UIView!
    @IBOutlet weak var shirtView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        glassesView.isHidden = false
        faceView.isHidden = true
        hairView.isHidden = true
        shirtView.isHidden = true
    }
    @IBAction func glassesSelect(_ sender: Any) {
        glassesView.isHidden = false
        faceView.isHidden = true
        hairView.isHidden = true
        shirtView.isHidden = true
    }
    
    @IBAction func faceSelect(_ sender: Any) {
        glassesView.isHidden = true
        faceView.isHidden = false
        hairView.isHidden = true
        shirtView.isHidden = true
    }
    
    @IBAction func hairSelect(_ sender: Any) {
        glassesView.isHidden = true
        faceView.isHidden = true
        hairView.isHidden = false
        shirtView.isHidden = true
    }
    
    @IBAction func shirtSelect(_ sender: Any) {
        glassesView.isHidden = true
        faceView.isHidden = true
        hairView.isHidden = true
        shirtView.isHidden = false
    }
    
    @IBAction func glassesChangeButton(_ sender: UIButton) {
//        let theImage = sender.currentImage
        glassesImageView.image = UIImage(named: "glasses \(sender.tag)")
    }
    
    @IBAction func faceChangeButton(_ sender: UIButton) {
        faceImageView.image = UIImage(named: "face \(sender.tag)")
    }
    
    @IBAction func hairChangeButton(_ sender: UIButton) {
        hairImageView.image = UIImage(named: "hair \(sender.tag)")
    }
    
    @IBAction func shirtChangeButton(_ sender: UIButton) {
        shirtImageView.image = UIImage(named: "shirt \(sender.tag)")
    }
}


//        //        引用頭的圖片
//        let head1 = UIImage (named: "head01")
//        //        引用圖片的UIImageVIew
//        let headImageView = UIImageView (image: head1)
//        //        設定圖片填滿的方法
//        headImageView.contentMode = .scaleAspectFill
//        //        設定圖片大小
//        headImageView.frame = CGRect(x: 150, y: 100, width: 100, height: 100)
//        view.addSubview(headImageView)


//#Preview {
//    let storyboard = UIStoryboard(name: "Main", bundle: nil)
//    return storyboard.instantiateInitialViewController()!
//}
    
