//
//  MovieCollectionViewCell.h
//  MeetFlix
//
//  Created by Fabio Lindemberg on 07/07/20.
//  Copyright © 2020 Fabio Lindemberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface MovieCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imgCover;
- (void) loadUIWithMovie: (Movie*) movie;
@end

NS_ASSUME_NONNULL_END
