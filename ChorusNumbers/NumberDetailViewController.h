//
//  NumberDetailViewController.h
//  ChorusNumbers
//
//  Created by vingleo on 17/1/9.
//  Copyright © 2017年 Vingleo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NumberDetailViewController : UIViewController

@property(weak,nonatomic) NSIndexPath *detailIndexPath;
@property (weak, nonatomic) IBOutlet UILabel *nameText;

@property(nonatomic,strong)NSArray *detailNumbers;
@property(nonatomic,copy)NSArray *detailIcons;

@property (weak, nonatomic) NSString *imagePath;
@property(weak,nonatomic) NSString *detailNameText;
@property(weak,nonatomic)NSString *detailImage;
@property (weak, nonatomic) IBOutlet UIImageView *numberImg;

@property NSUInteger index;

- (IBAction)previousClick:(id)sender;
- (IBAction)nextClick:(id)sender;

@end
