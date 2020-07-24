//
//  MovieTableViewCell.m
//  MeetFlix
//
//  Created by Fabio Lindemberg on 07/07/20.
//  Copyright © 2020 Fabio Lindemberg. All rights reserved.
//
#import "UIApplication+TopViewController.h"
#import "MovieCategoryTableViewCell.h"
#import "MovieCollectionViewCell.h"
#import "DetailViewController.h"
#import "Constants.h"


@implementation MovieCategoryTableViewCell

- (void)awakeFromNib {
    
    [super awakeFromNib];
    _cvMovie.delegate = self;
    _cvMovie.dataSource = self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

# pragma collectionViewDelegate/datasource

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    MovieCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier: @"MovieCell" forIndexPath: indexPath];
    
    Movie * movie = self.movies[indexPath.row];
    [cell loadUIWithMovie: movie];
    
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.movies.count;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(100, 150);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UIViewController *topViewController = [[UIApplication sharedApplication] topViewController];
    
    UIStoryboard * storyboard = [UIStoryboard storyboardWithName: @"Main"
                                                          bundle: nil];
    DetailViewController * detailViewController = [storyboard instantiateViewControllerWithIdentifier: @"DetailView"];
    detailViewController.movie = self.movies[indexPath.row];

    [topViewController presentViewController: detailViewController
                                    animated:true completion:nil];
}

@end
