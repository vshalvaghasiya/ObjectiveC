//
//  GestureViewController.m
//  ObjectiveC
//
//  Created by vishal on 20/01/18.
//  Copyright © 2018 vishalvaghasiya. All rights reserved.
//

#import "GestureViewController.h"
#import "CollectionViewController.h"
#import "TapGestureViewController.h"
#import "SwipeGestureViewController.h"
#import "LongPressGestureViewController.h"
#import "PanGestureViewController.h"
#import "PinchGestureViewController.h"
#import "RotationGestureViewController.h"
@interface GestureViewController ()

@end

@implementation GestureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backButtonClick:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:true];
}

- (IBAction)tapGestureButtonClick:(UIButton *)sender {
    TapGestureViewController *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"TapGestureViewController"];
    [self.navigationController pushViewController:newView animated:YES];
}

- (IBAction)pinchGestureButtonClick:(UIButton *)sender {
    PinchGestureViewController *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"PinchGestureViewController"];
    [self.navigationController pushViewController:newView animated:YES];
}

- (IBAction)rotationGestureButtonClick:(UIButton *)sender {
    RotationGestureViewController *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"RotationGestureViewController"];
    [self.navigationController pushViewController:newView animated:YES];
}

- (IBAction)swipeGestureButtonClick:(UIButton *)sender {
    SwipeGestureViewController *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"SwipeGestureViewController"];
    [self.navigationController pushViewController:newView animated:YES];
}

- (IBAction)panGestureButtonClick:(UIButton *)sender {
    PanGestureViewController *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"PanGestureViewController"];
    [self.navigationController pushViewController:newView animated:YES];
}

- (IBAction)longPressGestureButtonClick:(UIButton *)sender {
    LongPressGestureViewController *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"LongPressGestureViewController"];
    [self.navigationController pushViewController:newView animated:YES];
}
@end
