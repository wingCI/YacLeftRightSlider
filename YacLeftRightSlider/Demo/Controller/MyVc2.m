//
//  MyVc2.m
//  YacLeftRightSlider
//
//  Created by ChangWingchit on 2017/4/6.
//  Copyright © 2017年 chit. All rights reserved.
//

#import "MyVc2.h"

@interface MyVc2 ()

@end

@implementation MyVc2

- (id)init
{
    if (self = [super init]) {
        self.title = @"子控制器2";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(backAction:)];
    swipe.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swipe];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UISwipeGestureRecognizer
- (void)backAction:(UISwipeGestureRecognizer*)gesture
{
    if (gesture.direction)
    {
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
