//
//  SwipeGestureViewController.h
//  ObjectiveC
//
//  Created by vishal on 20/01/18.
//  Copyright © 2018 vishalvaghasiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwipeGestureViewController : UIViewController

- (IBAction)backButtonClick:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UIView *swipeView;


@end
