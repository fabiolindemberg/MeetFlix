//
//  RecomendationsCell.h
//  MeetFlix
//
//  Created by Fabio Lindemberg on 23/07/20.
//  Copyright © 2020 Fabio Lindemberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface RecomendationsCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imgCover;

- (void) loadWithMovie: (Movie *) movie;
@end

NS_ASSUME_NONNULL_END
