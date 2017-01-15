//
//  NumbersTableViewController.h
//  ChorusNumbers
//
//  Created by vingleo on 17/1/9.
//  Copyright © 2017年 Vingleo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NumbersTableViewController : UITableViewController

@property(nonatomic,strong)NSArray *numbers;
@property(nonatomic,copy)NSArray *icons;
@property(nonatomic,copy)NSString *selectedNumber;

@end
