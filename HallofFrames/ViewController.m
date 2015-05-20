//
//  ViewController.m
//  HallofFrames
//
//  Created by Tom Carmona on 5/20/15.
//  Copyright (c) 2015 Tom Carmona. All rights reserved.
//

#import "ViewController.h"
#import "PictureCollectionViewCell.h"
#import "CustomView.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate, PictureCollectionCellViewDelegate, CustomViewDelegate>

@property NSMutableArray *pictures;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    PictureCollectionViewCell *image1 = [[PictureCollectionViewCell alloc] initWithPictureImageView:[UIImage imageNamed:@"gyro"] andWithPictureFrameColor:[UIColor blueColor]];
    PictureCollectionViewCell *image2 = [[PictureCollectionViewCell alloc] initWithPictureImageView:[UIImage imageNamed:@"scrooge"] andWithPictureFrameColor:[UIColor blueColor]];
    PictureCollectionViewCell *image3 = [[PictureCollectionViewCell alloc] initWithPictureImageView:[UIImage imageNamed:@"gizmo"] andWithPictureFrameColor:[UIColor blueColor]];
    PictureCollectionViewCell *image4 = [[PictureCollectionViewCell alloc] initWithPictureImageView:[UIImage imageNamed:@"jet"] andWithPictureFrameColor:[UIColor blueColor]];
    PictureCollectionViewCell *image5 = [[PictureCollectionViewCell alloc] initWithPictureImageView:[UIImage imageNamed:@"beakly"] andWithPictureFrameColor:[UIColor blueColor]];

    self.pictures = [[NSMutableArray alloc]initWithObjects:image1, image2, image3, image4, image5, nil];

//    NSObject *image1 = [UIImage imageNamed:@"dragon"];
//    self.pictures = [[NSMutableArray alloc]initWithObjects: image1,image1,image1,image1,  nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.pictures.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PictureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PictureCellID" forIndexPath:indexPath];
    PictureCollectionViewCell *imagePicture = [self.pictures objectAtIndex:indexPath.row];
    cell.delegate = self;
    cell.pictureImageView.image = imagePicture.image;

    return cell;

}

//-(void)CustomViewDelegate:(id)cell buttonTapped:(UIButton *)button {
//    [[[NSBundle mainBundle] loadNibNamed:@"CustomizationView" owner:self options:nil] objectAtIndex:0];
//
//}

-(void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath {
    CustomView *custView = [[[NSBundle mainBundle] loadNibNamed:@"CustomizationView" owner:self options:nil] objectAtIndex:0];
    self.custView

}



@end
