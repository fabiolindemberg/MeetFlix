//
//  RecomendationsCell.m
//  MeetFlix
//
//  Created by Fabio Lindemberg on 23/07/20.
//  Copyright © 2020 Fabio Lindemberg. All rights reserved.
//

#import "RecomendationsCell.h"
#import "SDWebImage/SDWebImage.h"

@implementation RecomendationsCell

- (void) loadWithMovie:(Movie *)movie {
    [self.imgCover sd_setImageWithURL: [[NSURL alloc] initWithString: movie.coverURL]];
}
@end
