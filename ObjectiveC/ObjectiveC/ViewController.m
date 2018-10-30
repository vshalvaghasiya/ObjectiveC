//
//  ViewController.m
//  ObjectiveC
//
//  Created by vishal on 17/01/18.
//  Copyright © 2018 vishalvaghasiya. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewController.h"
#import "TableviewViewController.h"
#import "ImagePickerViewController.h"
#import "GestureViewController.h"
#import "MyViewViewController.h"
#import "PickerViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//MARK: Button Click Events

- (IBAction)collectionViewButtonClick:(UIButton *)sender {
    
    CollectionViewController *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"CollectionViewController"];
    [self.navigationController pushViewController:newView animated:YES];
    
}

- (IBAction)tableviewButtonClick:(UIButton *)sender {
    TableviewViewController *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"TableviewViewController"];
    [self.navigationController pushViewController:newView animated:YES];
}

- (IBAction)imagePickerButtonClick:(UIButton *)sender {
    ImagePickerViewController *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"ImagePickerViewController"];
    [self.navigationController pushViewController:newView animated:YES];
    
}

- (IBAction)gestureButtonCLick:(UIButton *)sender {
    GestureViewController *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"GestureViewController"];
    [self.navigationController pushViewController:newView animated:YES];
}
- (IBAction)webViewButtonClick:(id)sender {
    MyViewViewController *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"MyViewViewController"];
    [self.navigationController pushViewController:newView animated:YES];
}
- (IBAction)alertButtonClick:(id)sender {
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"My Alert"
                                                                   message:@"This is an alert."
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}
- (IBAction)pickerViewButtonCLick:(id)sender {
    PickerViewController *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"PickerViewController"];
    [self.navigationController pushViewController:newView animated:YES];
}


@end
