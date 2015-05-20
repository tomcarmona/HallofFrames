//
//  ViewController.m
//  HallofFrames
//
//  Created by Tom Carmona on 5/20/15.
//  Copyright (c) 2015 Tom Carmona. All rights reserved.
//

#import "ViewController.h"
#import "PictureCollectionViewCell.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate, PictureCollectionCellViewDelegate, UICollectionViewDelegateFlowLayout>
@property NSMutableArray *pictures;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    PictureCollectionViewCell *image1 = [[PictureCollectionViewCell alloc] initWithPictureImageView:[UIImage imageNamed:@"dragon"] andWithPictureFrameColor:[UIColor blueColor]];
    PictureCollectionViewCell *image2 = [[PictureCollectionViewCell alloc] initWithPictureImageView:[UIImage imageNamed:@"dragon"] andWithPictureFrameColor:[UIColor blueColor]];
    PictureCollectionViewCell *image3 = [[PictureCollectionViewCell alloc] initWithPictureImageView:[UIImage imageNamed:@"dragon"] andWithPictureFrameColor:[UIColor blueColor]];
    PictureCollectionViewCell *image4 = [[PictureCollectionViewCell alloc] initWithPictureImageView:[UIImage imageNamed:@"dragon"] andWithPictureFrameColor:[UIColor blueColor]];
    PictureCollectionViewCell *image5 = [[PictureCollectionViewCell alloc] initWithPictureImageView:[UIImage imageNamed:@"dragon"] andWithPictureFrameColor:[UIColor blueColor]];



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




@end
