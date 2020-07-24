//
//  MovieCollectionViewCell.m
//  MeetFlix
//
//  Created by Fabio Lindemberg on 07/07/20.
//  Copyright © 2020 Fabio Lindemberg. All rights reserved.
//

#import "MovieCollectionViewCell.h"
#import "SDWebImage/SDWebImage.h"
#import "Movie.h"

@implementation MovieCollectionViewCell

- (void) loadUIWithMovie: (Movie*)  movie {
    [_imgCover sd_setImageWithURL: [NSURL URLWithString: movie.coverURL]];
}

@end
