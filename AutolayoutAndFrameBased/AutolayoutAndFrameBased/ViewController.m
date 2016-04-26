//
//  ViewController.m
//  AutolayoutAndFrameBased
//
//  Created by chen xiaosong on 16/4/26.
//  Copyright © 2016年 chen xiaosong. All rights reserved.
//

#import "ViewController.h"

#import "Subview.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *testBtn;
@property (weak, nonatomic) IBOutlet UITextField *tvX;
@property (weak, nonatomic) IBOutlet UITextField *tvY;
@property (weak, nonatomic) IBOutlet Subview *subview;

@end

@implementation ViewController
{
    UIView *manualView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"ViewController:viewDidLoad");

    [_testBtn removeConstraints:_testBtn.constraints];
}

- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"ViewController:viewWillAppear");
}

- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"ViewController:viewDidAppear");
    _tvX.text = [@(_testBtn.frame.origin.x) stringValue];
    _tvY.text = [@(_testBtn.frame.origin.y) stringValue];

}

- (void)viewWillLayoutSubviews
{
    NSLog(@"ViewController:viewWillLayoutSubviews");
}

- (void)viewDidLayoutSubviews
{
    NSLog(@"ViewController:viewDidLayoutSubviews");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnClick:(id)sender {
    CGFloat x = [_tvX.text floatValue];
    CGFloat y = [_tvY.text floatValue];
    
    CGRect frame = _testBtn.frame;
    frame.origin.x = x;
    frame.origin.y = y;
    
    _testBtn.frame = frame;
    
}

@end
