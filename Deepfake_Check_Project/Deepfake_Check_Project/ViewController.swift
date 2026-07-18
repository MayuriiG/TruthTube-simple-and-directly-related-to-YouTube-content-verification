//
//  ViewController.swift
//  Deepfake_Check_Project
//
//  Created by M@yuraa on 18/07/26.
//

import UIKit
import TruthTubeSDK
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webContainerView: UIView!
    @IBOutlet weak var analyzeButton: UIButton!

    var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        analyzeButton.layer.cornerRadius = 10
        analyzeButton.clipsToBounds = true
        analyzeButton.isUserInteractionEnabled = true

        
        analyzeButton.addTarget(self, action: #selector(analyzeButtonTapped), for: .touchUpInside)
        createViewCall()
        webContainerView.bringSubviewToFront(analyzeButton)
        
          }
    
    func createViewCall(){
        webview = WKWebView (frame:webContainerView.bounds)
        webview.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        webContainerView.addSubview(webview)
        
        if let urlCall = URL(
            string: "https://www.youtube.com"
        ){
            
        let request  = URLRequest(url: urlCall)
            webview.load(request)
        }
    }

    func callMySDk(){
        let result  = TruthTubeAnalyzer.shared.analyze(title: "This is AI generated Video")
        print(result.formattedMessage)
    }
    
    @objc func analyzeButtonTapped(){
  
   //   @IBAction func analyzeButtonTapped(_ sender: UIButton){
           print("🤖 BUTTON CLICKED")
    
        webview.evaluateJavaScript("document.title"){
        [weak self] result,error in
        guard let self = self else { return}
        guard let title = result as? String else{return}
        
        let analysis = TruthTubeAnalyzer.shared.analyze(title: title)
        let alert = UIAlertController(
            title: "TruthTube Analysis",
            message: analysis.formattedMessage,
            preferredStyle: .alert
        )
        alert.addAction( UIAlertAction(title: "OK", style: .default ))
        self.present(alert,animated: true)
        
        }
        print("🤖 BUTTON CLICKED")
        
     }
  }

