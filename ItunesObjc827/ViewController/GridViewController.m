//
//  GridViewController.m
//  ItunesObjc827
//
//  Created by mac on 10/7/19.
//  Copyright © 2019 mac. All rights reserved.
//

#import "GridViewController.h"
#import "AlbumCollectionCell.h"

@interface GridViewController ()

@property (weak, nonatomic) IBOutlet UICollectionView *gridCollectionView;

@end

@implementation GridViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self.gridCollectionView setBackgroundColor: UIColor.redColor];
}


//MARK: Grid CollectionView

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    AlbumCollectionCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:[AlbumCollectionCell identifier] forIndexPath:indexPath];
    
    //TODO: Configure CollectionCell
    
    return cell;
    
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    double width = self.view.frame.size.width / 3;
    return CGSizeMake(width, width);
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
}


@end
