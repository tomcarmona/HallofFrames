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
    NSObject *image1 = [UIImage imageNamed:@"dragon"];
    self.pictures = [[NSMutableArray alloc]initWithObjects: image1, nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 1;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PictureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PictureCellID" forIndexPath:indexPath];
    
    return cell;
}


@end
