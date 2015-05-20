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

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate, CustomViewDelegate>

@property NSMutableArray *pictures;
@property (weak, nonatomic) IBOutlet CustomView *custView;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property NSIndexPath *indexPath;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    PictureCollectionViewCell *image1 = [[PictureCollectionViewCell alloc] initWithPictureImageView:[UIImage imageNamed:@"gyro"] andWithPictureFrameColor:[UIColor blackColor]];
    PictureCollectionViewCell *image2 = [[PictureCollectionViewCell alloc] initWithPictureImageView:[UIImage imageNamed:@"scrooge"] andWithPictureFrameColor:[UIColor blackColor]];
    PictureCollectionViewCell *image3 = [[PictureCollectionViewCell alloc] initWithPictureImageView:[UIImage imageNamed:@"gizmo"] andWithPictureFrameColor:[UIColor blackColor]];
    PictureCollectionViewCell *image4 = [[PictureCollectionViewCell alloc] initWithPictureImageView:[UIImage imageNamed:@"jet"] andWithPictureFrameColor:[UIColor blackColor]];
    PictureCollectionViewCell *image5 = [[PictureCollectionViewCell alloc] initWithPictureImageView:[UIImage imageNamed:@"beakly"] andWithPictureFrameColor:[UIColor blackColor]];

    self.pictures = [[NSMutableArray alloc]initWithObjects:image1, image2, image3, image4, image5, nil];

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
    cell.backgroundColor = imagePicture.frameColor;
    return cell;

}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    self.custView = [[[NSBundle mainBundle] loadNibNamed:@"CustomizationView" owner:self options:nil] objectAtIndex:0];
    self.custView.delegate = self;
    self.indexPath = indexPath;
    [self.view addSubview:self.custView];
    [self.view resignFirstResponder];
    self.custView.center = self.view.center;

}

-(void)customViewDelegate:(id)cell buttonTapped:(UIButton *)button {
    PictureCollectionViewCell *object = [self.pictures objectAtIndex:self.indexPath.row];
    object.frameColor = button.backgroundColor;
    [self.collectionView reloadData];
    [self.custView removeFromSuperview];

}



@end
