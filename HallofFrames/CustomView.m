//
//  CustomView.m
//  HallofFrames
//
//  Created by Tom Carmona on 5/20/15.
//  Copyright (c) 2015 Tom Carmona. All rights reserved.
//

#import "CustomView.h"
#import "PictureCollectionViewCell.h"
#import "ViewController.h"

@implementation CustomView

- (IBAction)onButtonTapped:(UIButton *)sender {
    [self.delegate customViewDelegate:self buttonTapped:sender];

}

@end
