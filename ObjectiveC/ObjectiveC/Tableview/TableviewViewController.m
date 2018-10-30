//
//  TableviewViewController.m
//  ObjectiveC
//
//  Created by vishal on 19/01/18.
//  Copyright © 2018 vishalvaghasiya. All rights reserved.
//

#import "TableviewViewController.h"
#import "TableTableViewCell.h"
@interface TableviewViewController ()

@end

@implementation TableviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _myTableview.delegate = self;
    _myTableview.dataSource = self;
    
    recipeList = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//MARK: Tableview Delegate Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipeList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"TableTableViewCell";
    TableTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];

    cell.textLabel.text = [recipeList objectAtIndex:indexPath.row];
    return cell;
}


- (IBAction)backButtonCLick:(id)sender {
    [self.navigationController popViewControllerAnimated:true];
}
@end
