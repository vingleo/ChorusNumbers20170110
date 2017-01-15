//
//  NumberDetailViewController.m
//  ChorusNumbers
//
//  Created by vingleo on 17/1/9.
//  Copyright © 2017年 Vingleo. All rights reserved.
//

#import "NumberDetailViewController.h"
#import "NumbersTableViewController.h"

@interface NumberDetailViewController ()

@end

@implementation NumberDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //NSLog(@"detailNubmer is: %@",_detailNumbers);
    
    // Do any additional setup after loading the view.
    _nameText.text = _detailNameText;
    _numberImg.image= [UIImage imageNamed:_imagePath];
    _index = _detailIndexPath.row;
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

- (IBAction)previousClick:(id)sender {
    if (_index > 0) {
    _index--;
    _nameText.text = [_detailNumbers objectAtIndex:_index];
    _imagePath = [_detailIcons objectAtIndex:_index];
    _numberImg.image = [UIImage imageNamed:_imagePath];
    }
    else {   //add error msgbox
       

        
        UIAlertController  *alert = [UIAlertController alertControllerWithTitle:@"您浏览的" message:@"已经是第一个！！" preferredStyle:UIAlertControllerStyleAlert];
        
        //取消
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"返回" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:cancelAction];
        
        //确认
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        }];
        
        [alert addAction:okAction];
        [self presentViewController:alert animated:YES completion:nil];
        
        
        
    }
}

- (IBAction)nextClick:(id)sender {
    if (_index < [_detailNumbers count]-1){
    _index++;
    _nameText.text = [_detailNumbers objectAtIndex:_index];
    _imagePath = [_detailIcons objectAtIndex:_index];
    _numberImg.image = [UIImage imageNamed:_imagePath];
    }
    else {
        _index = [_detailNumbers count]-1;
        _nameText.text = [_detailNumbers objectAtIndex:_index];
        _imagePath = [_detailIcons objectAtIndex:_index];
        _numberImg.image = [UIImage imageNamed:_imagePath];
        
        UIAlertController  *alert = [UIAlertController alertControllerWithTitle:@"您浏览的" message:@"已经是最后一个！！" preferredStyle:UIAlertControllerStyleAlert];
        
        //取消
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"返回" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:cancelAction];
        
        //确认
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        }];
        
        [alert addAction:okAction];
        [self presentViewController:alert animated:YES completion:nil];
        
        
    }
    
}
@end
