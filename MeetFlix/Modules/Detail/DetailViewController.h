//
//  DetailViewController.h
//  MeetFlix
//
//  Created by Fabio Lindemberg on 21/07/20.
//  Copyright © 2020 Fabio Lindemberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"
#import "SDWebImage/SDWebImage.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) Movie *movie;
@property (weak, nonatomic) NSArray<Movie*> *recomendations;
@property (weak, nonatomic) IBOutlet UIImageView *imgBackground;
@property (weak, nonatomic) IBOutlet UIImageView *imgCover;
@property (weak, nonatomic) IBOutlet UILabel *lblYear;
@property (weak, nonatomic) IBOutlet UILabel *lblText;
@property (weak, nonatomic) IBOutlet UILabel *lblAge;
@property (weak, nonatomic) IBOutlet UILabel *lblRelevant;
@property (weak, nonatomic) IBOutlet UILabel *lblTemp;
@property (weak, nonatomic) IBOutlet UILabel *lblCasting;
@property (weak, nonatomic) IBOutlet UILabel *lblCreators;
@property (weak, nonatomic) IBOutlet UIProgressView *pvProgress;
@property (weak, nonatomic) IBOutlet UICollectionView *cvRecomendations;
@end

NS_ASSUME_NONNULL_END
