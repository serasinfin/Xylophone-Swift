//
//  ViewController.swift
//  Xylophone


import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(etiqueta: sender.currentTitle!)
        
    }
    
    
    func playSound(etiqueta: String) {
        let url = Bundle.main.url(forResource: etiqueta, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
