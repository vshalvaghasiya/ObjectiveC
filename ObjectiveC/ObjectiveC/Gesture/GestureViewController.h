//
//  GestureViewController.h
//  ObjectiveC
//
//  Created by vishal on 20/01/18.
//  Copyright © 2018 vishalvaghasiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GestureViewController : UIViewController


- (IBAction)backButtonClick:(UIButton *)sender;
- (IBAction)tapGestureButtonClick:(UIButton *)sender;
- (IBAction)pinchGestureButtonClick:(UIButton *)sender;
- (IBAction)rotationGestureButtonClick:(UIButton *)sender;
- (IBAction)swipeGestureButtonClick:(UIButton *)sender;
- (IBAction)panGestureButtonClick:(UIButton *)sender;
- (IBAction)longPressGestureButtonClick:(UIButton *)sender;

@end
