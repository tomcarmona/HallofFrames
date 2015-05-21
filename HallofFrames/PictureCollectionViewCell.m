//
//  PictureCollectionViewCell.m
//  HallofFrames
//
//  Created by John McClelland on 5/20/15.
//  Copyright (c) 2015 Tom Carmona. All rights reserved.
//

#import "PictureCollectionViewCell.h"

@implementation PictureCollectionViewCell

-(instancetype)initWithPictureImageView:(UIImage *)image andWithPictureFrameColor:(UIColor *)frameColor {
    self = [super init];
    if (self) {
        self.image = image;
        self.frameColor = frameColor;
    }
    return self;
}

@end
