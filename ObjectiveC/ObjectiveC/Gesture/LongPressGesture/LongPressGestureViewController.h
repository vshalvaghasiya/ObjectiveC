//
//  LongPressGestureViewController.h
//  ObjectiveC
//
//  Created by vishal on 20/01/18.
//  Copyright © 2018 vishalvaghasiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LongPressGestureViewController : UIViewController

- (IBAction)backButtonClick:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIView *gestureView;
- (IBAction)longPressGestureCall:(id)sender;

@end
