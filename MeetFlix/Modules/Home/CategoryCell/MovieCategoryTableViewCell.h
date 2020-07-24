//
//  MovieTableViewCell.h
//  MeetFlix
//
//  Created by Fabio Lindemberg on 07/07/20.
//  Copyright © 2020 Fabio Lindemberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface MovieCategoryTableViewCell : UITableViewCell <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) NSArray<Movie*> *movies;
@property (weak, nonatomic) IBOutlet UICollectionView * cvMovie;

@end

NS_ASSUME_NONNULL_END
