//
//  CollectionViewController.m
//  ObjectiveC
//
//  Created by vishal on 17/01/18.
//  Copyright © 2018 vishalvaghasiya. All rights reserved.
//

#import "CollectionViewController.h"
#import "CellCollectionViewCell.h"
@interface CollectionViewController ()

@end

@implementation CollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    recipePhotos = [[NSArray alloc] initWithObjects:@"food1.jpg", @"food2.jpg", @"food3.jpg", @"food4.jpg", @"food5.jpg", @"food6.jpg", @"food7.jpg", @"food8.jpg", @"food9.jpg", @"food10.jpg", @"food11.jpg", @"food12.jpg", @"food13.jpg", @"food14.jpg", @"food15.jpg", @"food1.jpg", @"food2.jpg", @"food3.jpg", @"food4.jpg", @"food5.jpg", @"food6.jpg", @"food7.jpg", @"food8.jpg", @"food9.jpg", @"food10.jpg", @"food11.jpg", @"food12.jpg", @"food13.jpg", @"food14.jpg", @"food15.jpg", nil];
    
    [_collectionView.dataSource self];
    [_collectionView.delegate self];
    
    [_collectionView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//MARK: CollectionView Delegate Method

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSLog(@"%lu",(unsigned long)[recipePhotos count]);
    return [recipePhotos count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"CellCollectionViewCell";
    
    CellCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    cell.myImage.image = [UIImage imageNamed:[recipePhotos objectAtIndex:indexPath.row]];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%@",[recipePhotos objectAtIndex:indexPath.row]);
}

- (IBAction)backButtonClick:(id)sender {
    [self.navigationController popViewControllerAnimated:true];
}
@end
