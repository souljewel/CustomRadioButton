//
//  ViewController.m
//  CustomRadioButton
//
//  Created by Pham Thanh on 12/8/15.
//  Copyright © 2015 Pham Thanh. All rights reserved.
//

#import "ViewController.h"
#import "CCRadioButton.h"

@interface ViewController ()<RadioButtonDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CCRadioButton *radioButton = [[CCRadioButton alloc] initWithRadioButtonTitle:@[@"Firefox",@"Chrome",@"Safari",@"Internet Explorer"] selectedItem:1];
    [radioButton setFrame:CGRectMake(20, 60, 300, 150)];
    [self.view addSubview:radioButton];
    radioButton.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) selectRadioButtonEvent:(CCRadioButton*) radioButton selectedIndex:(int)selectedIndex{
    NSLog(@"index %d",selectedIndex);
}

@end
