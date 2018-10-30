//
//  CollectionViewController.h
//  ObjectiveC
//
//  Created by vishal on 17/01/18.
//  Copyright © 2018 vishalvaghasiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewController : UIViewController<UICollectionViewDelegate , UICollectionViewDataSource>{
    
    NSArray *recipePhotos;
}

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
- (IBAction)backButtonClick:(id)sender;


@end
