//
//  ViewController.swift
//  ImageFilter
//
//  Created by 伊藤 奨真 on 2022/07/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let ciImage = CIImage(image: imageView.image!)//CIImage型に変換
        
        let filter = CIFilter(name: "CIPhotoEffectMono")!//画像をモノクロにするフィルターを選択
        filter.setDefaults()//フィルターの状態をデフォルトに戻す
        filter.setValue(ciImage, forKey: kCIInputImageKey)//フィルターに元の画像を指定する、画像であることを示すキー
        
        let outputImage = filter.outputImage
        imageView.image = UIImage(ciImage: outputImage!)
    }


}

