//
//  PickerViewController.h
//  ObjectiveC
//
//  Created by vishal on 31/01/18.
//  Copyright © 2018 vishalvaghasiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>{
    NSArray *_pickerData;
}

@property (weak, nonatomic) IBOutlet UITextField *selectedItemsTextfield;
@property (weak, nonatomic) IBOutlet UITextField *selectDatesTextfield;

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;


@end
