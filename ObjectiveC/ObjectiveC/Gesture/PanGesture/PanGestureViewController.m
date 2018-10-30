//
//  PanGestureViewController.m
//  ObjectiveC
//
//  Created by vishal on 20/01/18.
//  Copyright © 2018 vishalvaghasiya. All rights reserved.
//

#import "PanGestureViewController.h"

@interface PanGestureViewController ()

@end

@implementation PanGestureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backButtonClick:(id)sender {
     [self.navigationController popViewControllerAnimated:true];
}

- (IBAction)panGestureCall:(UIPanGestureRecognizer *)sender {
    CGPoint touchLocation = [sender locationInView:self.view];
    _gestureView.center = touchLocation;
}

@end
