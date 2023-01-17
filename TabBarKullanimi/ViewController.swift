//
//  ViewController.swift
//  TabBarKullanimi
//
//  Created by ahmet kardesseven on 15.01.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        if let tabItems = tabBarController?.tabBar.items {
            let anasayfaItem = tabItems[0]
            let ayarlarItem = tabItems[1]
            
            anasayfaItem.badgeValue = "1"
            ayarlarItem.badgeValue = "Update"
        }
        
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.systemIndigo
        renkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
        renkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
        renkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
        
       
        
        // RENKLER
        
        
    }

    func renkDegistir(itemAppearance:UITabBarItemAppearance){
        itemAppearance.selected.iconColor = UIColor.systemOrange
        itemAppearance.selected.titleTextAttributes = [.foregroundColor:UIColor.systemOrange]
        itemAppearance.selected.badgeBackgroundColor = UIColor.systemMint
        
        itemAppearance.normal.iconColor = UIColor.systemOrange
        itemAppearance.normal.titleTextAttributes = [.foregroundColor:UIColor.white]
        itemAppearance.normal.badgeBackgroundColor = UIColor.lightGray
        
        //Login ekranı tamamlandı.
        // Launch scrren tamamlandı.
    }
    
    
    
    
}

