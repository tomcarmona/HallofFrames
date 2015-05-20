//
//  CustomView.h
//  HallofFrames
//
//  Created by Tom Carmona on 5/20/15.
//  Copyright (c) 2015 Tom Carmona. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol CustomViewDelegate <NSObject>

-(void)customViewDelegate:(id)cell buttonTapped:(UIButton *)button;

@end

@interface CustomView : UIView
@property (nonatomic, assign)id <CustomViewDelegate> delegate;
//@property NSMutableArray *pictures;

@end
