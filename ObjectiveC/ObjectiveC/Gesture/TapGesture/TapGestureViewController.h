//
//  TapGestureViewController.h
//  ObjectiveC
//
//  Created by vishal on 20/01/18.
//  Copyright © 2018 vishalvaghasiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TapGestureViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *gestureView;

- (IBAction)tapGestureCall:(UITapGestureRecognizer *)sender;
- (IBAction)backButtonClick:(UIButton *)sender;

@end
