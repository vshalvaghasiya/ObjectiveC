//
//  TableviewViewController.h
//  ObjectiveC
//
//  Created by vishal on 19/01/18.
//  Copyright © 2018 vishalvaghasiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableviewViewController : UIViewController<UITableViewDelegate ,UITableViewDataSource>{
    NSArray *recipeList;
}

@property (weak, nonatomic) IBOutlet UITableView *myTableview;
- (IBAction)backButtonCLick:(id)sender;

@end
