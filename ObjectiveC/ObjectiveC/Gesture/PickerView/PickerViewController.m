//
//  PickerViewController.m
//  ObjectiveC
//
//  Created by vishal on 31/01/18.
//  Copyright © 2018 vishalvaghasiya. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()

@end

@implementation PickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _pickerData = @[@"Item 1", @"Item 2", @"Item 3", @"Item 4", @"Item 5", @"Item 6"];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backButtonClick:(id)sender {
    [self.navigationController popViewControllerAnimated:true];
}

- (IBAction)selectItemsButtonClick:(id)sender {
    _pickerView.delegate = self;
    _pickerView.dataSource = self;
    _pickerView.showsSelectionIndicator = YES;
    
    self.datePicker.hidden = YES;
    self.pickerView.hidden = NO;
}

- (IBAction)selectDateButtonClick:(id)sender {
    self.datePicker.hidden = NO;
    self.pickerView.hidden = YES;
    
    [self.datePicker addTarget:self action:@selector(onDatePickerValueChanged:) forControlEvents:UIControlEventValueChanged];
}

//MARK: Date picker
- (void)onDatePickerValueChanged:(UIDatePicker *)datePicker
{
    NSLocale *usLocale = [[NSLocale alloc]
                          initWithLocaleIdentifier:@"en_US"];
    
    NSDate *pickerDate = [_datePicker date];
    NSString *selectionString = [[NSString alloc]
                                 initWithFormat:@"%@",
                                 [pickerDate descriptionWithLocale:usLocale]];
    _selectDatesTextfield.text = selectionString;
}

//MARK: Pickerview Delegate Methods
// The number of columns of data
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
// The number of rows of data
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _pickerData.count;
}
// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    _selectedItemsTextfield.text = _pickerData[row];
    return _pickerData[row];
}

@end
