//
//  ViewController.swift
//  ISpy
//
//  Created by Ernesto Daniel Mejia Valdiviezo on 31/08/18.
//  Copyright © 2018 Ernesto Daniel Mejia Valdiviezo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate{

    @IBOutlet weak var sv: UIScrollView!
    @IBOutlet weak var imagen: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sv.delegate = self
        updateZoomFor(size: view.bounds.size)
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imagen
    }
    func updateZoomFor(size: CGSize){
        let widthScale = size.width / imagen.bounds.width
        let heightScale = size.height / imagen.bounds.height
        let scale = min(widthScale,heightScale)
        sv.minimumZoomScale = scale
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

