//
//  ViewController.swift
//  assignment7
//
//  Created by Daniyal Nurgazinov on 26.10.2024.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the data source and delegate
        collectionView.dataSource = self
        collectionView.delegate = self
        
        // Register the cell using the storyboard identifier
//        collectionView.register(UINib(nibName: "GameCell", bundle: nil), forCellWithReuseIdentifier: "GameCell")
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return games.count  // Display the number of games in the array
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // Adjust the size of each cell
        return CGSize(width: 160, height: 300)  // Adjust width and height as needed
    }


    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GameCell", for: indexPath) as? GameCell else {
            fatalError("Could not dequeue a cell")
        }
        
        let game = games[indexPath.row]
        cell.titleLabel.text = game.title
        cell.platformLabel.text = game.platform
        cell.coverImageView.image = game.coverArt
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedGame = games[indexPath.row]
        print("Selected Game: \(selectedGame.title)")
    }

    struct Game {
        let title: String
        let platform: String
        let coverArt: UIImage
    }
    let games: [Game] = [
        Game(title: "Assassin's Creed 2", platform: "PC, PS3, Xbox 360", coverArt: UIImage(named: "assassins_creed_2")!),
        Game(title: "The Witcher 3", platform: "PC, PS4, Xbox One", coverArt: UIImage(named: "witcher_3")!),
        Game(title: "Cyberpunk 2077", platform: "PC, PS5, Xbox Series X", coverArt: UIImage(named: "cyberpunk")!),
        Game(title: "Red Dead Redemption 2", platform: "PC, PS4, Xbox One", coverArt: UIImage(named: "red_dead_redemption_2")!),
        Game(title: "God of War", platform: "PS4, PS5", coverArt: UIImage(named: "god_of_war")!),
        Game(title: "Horizon Zero Dawn", platform: "PC, PS4", coverArt: UIImage(named: "horizon_zero_dawn")!),
        Game(title: "Dark Souls III", platform: "PC, PS4, Xbox One", coverArt: UIImage(named: "dark_souls_3")!),
        Game(title: "Ghost of Tsushima", platform: "PS4, PS5", coverArt: UIImage(named: "ghost_of_tsushima")!),
        Game(title: "The Legend of Zelda: Breath of the Wild", platform: "Nintendo Switch", coverArt: UIImage(named: "zelda_breath_of_the_wild")!),
        Game(title: "Resident Evil Village", platform: "PC, PS5, Xbox Series X", coverArt: UIImage(named: "resident_evil_village")!)
    ]



}

