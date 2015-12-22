//
//  CCRadioButton.h
//  CustomRadioButton
//
//  Created by Pham Thanh on 12/8/15.
//  Copyright © 2015 Pham Thanh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class CCRadioButton;

@protocol RadioButtonDelegate

- (void) selectRadioButtonEvent:(CCRadioButton*) radioButton selectedIndex:(int)selectedIndex;

@end

@interface CCRadioButton :UIView
@property NSMutableArray *lstRadioButtons;
@property int count;
@property (weak) id <RadioButtonDelegate> delegate;
-(CCRadioButton*) initWithRadioButtonTitle:(NSArray*) titles selectedItem:(int)selectedItem;
@end
