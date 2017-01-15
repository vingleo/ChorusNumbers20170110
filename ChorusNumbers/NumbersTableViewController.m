//
//  NumbersTableViewController.m
//  ChorusNumbers
//
//  Created by vingleo on 17/1/9.
//  Copyright © 2017年 Vingleo. All rights reserved.
//

#import "NumbersTableViewController.h"
#import "NumberDetailViewController.h"

@interface NumbersTableViewController ()



@end

@implementation NumbersTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.numbers = [NSArray arrayWithObjects: @"吴思聪",@"费心悦",@"朱俊涵",@"陆雪",@"王悦然",@"胡杨晓然",@"任丽颖",@"李安蕊",@"杨景昊",nil];
    self.icons = @[@"IMG_0439.JPG",@"IMG_0440.JPG",@"IMG_0441.JPG",@"IMG_0442.JPG",@"IMG_0443.JPG",@"IMG_0444.JPG",@"IMG_0445.JPG",@"IMG_0446.JPG",@"IMG_0447.JPG"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.numbers count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *cellIdentifier = @"numberCell";
    UITableViewCell *mycell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    mycell.textLabel.text = [self.numbers objectAtIndex:indexPath.row];
    //mycell.imageView.image = [UIImage imageNamed:[self.icons objectAtIndex:indexPath.row]];
    
    return mycell;
}

#pragma mark TableView Delegate methods

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    _selectedNumber = _numbers[indexPath.row];
    //[self performSegueWithIdentifier:@"selectedSegue" sender:self];
    
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NumberDetailViewController *numberDetail = [segue destinationViewController];
    if ([[segue identifier] isEqualToString:@"selectedSegue"]) {

        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        numberDetail.detailIndexPath = indexPath;
        numberDetail.detailNumbers = _numbers;
        numberDetail.detailIcons = _icons;
        
        numberDetail.detailNameText = [_numbers objectAtIndex:indexPath.row];
        numberDetail.imagePath = [_icons objectAtIndex:indexPath.row];
        numberDetail.index = indexPath.row;
    }

}

@end
