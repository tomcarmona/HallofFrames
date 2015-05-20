//
//  PictureCollectionViewCell.h
//  HallofFrames
//
//  Created by John McClelland on 5/20/15.
//  Copyright (c) 2015 Tom Carmona. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol PictureCollectionCellViewDelegate <NSObject>

-(void)PictureCollectionViewCell:(id)cell PictureImageView:(UIImage *)image PictureFrameColor:(UIColor *)frameColor;

@end

@interface PictureCollectionViewCell : UICollectionViewCell
-(instancetype)initWithPictureImageView:(UIImage *)image andWithPictureFrameColor:(UIColor *)frameColor;
@property (weak, nonatomic) IBOutlet UIImageView *pictureImageView;
@property UIImage *image;
@property UIColor *frameColor;
@property (nonatomic, assign) id <PictureCollectionCellViewDelegate> delegate;


@end
