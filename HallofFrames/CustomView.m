//
//  CustomView.m
//  HallofFrames
//
//  Created by Tom Carmona on 5/20/15.
//  Copyright (c) 2015 Tom Carmona. All rights reserved.
//

#import "CustomView.h"
#import <UIKit/UIKit.h>

@implementation CustomView

-(void)awakeFromNib {
    [self.contentView]
}


- (IBAction)onRedTapped:(id)sender {
    [self.delegate CustomViewDelegate:self buttonTapped:sender];
}

- (IBAction)onGreenTapped:(id)sender {
    [self.delegate CustomViewDelegate:self buttonTapped:sender];
}

- (IBAction)onBlueTapped:(id)sender {
    [self.delegate CustomViewDelegate:self buttonTapped:sender];
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
