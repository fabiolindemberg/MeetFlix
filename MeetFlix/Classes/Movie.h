//
//  MovieClass.h
//  MeetFlix
//
//  Created by Fabio Lindemberg on 07/07/20.
//  Copyright © 2020 Fabio Lindemberg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Movie : NSObject

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *coverURL;
@property (nonatomic) NSString *text;
@property (nonatomic) int age;
@property (nonatomic) NSString *year;
@property (nonatomic) NSString *temp;
@property (nonatomic) NSString *casting;
@property (nonatomic) NSString *creators;
@property (nonatomic) NSString *time;
@property (nonatomic) NSString *relevant;
@property (nonatomic) double progress;

+ (NSArray<Movie*>*) getMovies;
@end

NS_ASSUME_NONNULL_END
