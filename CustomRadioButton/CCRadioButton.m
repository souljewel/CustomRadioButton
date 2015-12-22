//
//  CCRadioButton.m
//  CustomRadioButton
//
//  Created by Pham Thanh on 12/8/15.
//  Copyright © 2015 Pham Thanh. All rights reserved.
//

#import "CCRadioButton.h"

@implementation CCRadioButton

// ----------------------
// init radio button with titles and selectedIndex
-(CCRadioButton*) initWithRadioButtonTitle:(NSArray *)titles selectedItem:(int)selectedItem{
    
    self = [super initWithFrame:CGRectMake(20, 60, 300, 120)];
    
    if(self){
        _lstRadioButtons = [[NSMutableArray alloc] init];
        _delegate = nil;
        _count = (int)[titles count];
        
        for(int i=0;i < _count;i++){
            
            UIButton *radioButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 35 * i, 150, 40)];
            [radioButton setTag:i];
            [radioButton setImage:[UIImage imageNamed:@"radio_button_off.png"] forState:UIControlStateNormal];
            [radioButton setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateSelected];
            [radioButton addTarget:self action:@selector(radiobuttonSelected:) forControlEvents:UIControlEventTouchUpInside];
            [radioButton setTitle:[titles objectAtIndex:i] forState:UIControlStateNormal];
            [radioButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            [radioButton setImageEdgeInsets:UIEdgeInsetsMake(0.0, -4.0, 0.0, 0.0)];
            [radioButton setTitleEdgeInsets:UIEdgeInsetsMake(0.0, 0.4, 0.0, 0.0)];
            [radioButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
            if(selectedItem == i){
                [radioButton setSelected:true];
            }
            [_lstRadioButtons addObject:radioButton];
            [self addSubview:radioButton];
            
            [radioButton sizeToFit];
        }
    }
 
    return self;
}



// ----------------------
// button click event
-(void)radiobuttonSelected:(id)sender{
    UIButton *button = [_lstRadioButtons objectAtIndex:[sender tag]];
    
    if([button isSelected] == false){
        [button setSelected:true];
        
        //set other radio buttons off
        for(NSInteger i=0;i< [_lstRadioButtons count];i++){
            if(i != [sender tag]){
                UIButton *buttonTemp = [_lstRadioButtons objectAtIndex:i];
                [buttonTemp setSelected:false];
            }
        }
    }
    [_delegate selectRadioButtonEvent:self selectedIndex:(int)[button tag]];
}


@end
