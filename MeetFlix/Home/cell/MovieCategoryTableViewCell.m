//
//  MovieTableViewCell.m
//  MeetFlix
//
//  Created by Fabio Lindemberg on 07/07/20.
//  Copyright © 2020 Fabio Lindemberg. All rights reserved.
//

#import "MovieCategoryTableViewCell.h"
#import "MovieCollectionViewCell.h"

@implementation MovieCategoryTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    _cvMovie.delegate = self;
    _cvMovie.dataSource = self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



# pragma collectionViewDelegate/datasource

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    MovieCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier: @"MovieCell" forIndexPath: indexPath];
    
    Movie * movie = self.presenter.movies[indexPath.row];
    [cell loadUIWithMovie: movie];
    
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.presenter.movies.count;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
        return self.presenter.movies.count;
}

@end
