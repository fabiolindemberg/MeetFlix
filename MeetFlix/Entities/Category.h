//
//  Category.h
//  MeetFlix
//
//  Created by Fabio Lindemberg on 22/07/20.
//  Copyright © 2020 Fabio Lindemberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface Category : NSObject

@property (nonatomic) NSString * name;
@property (nonatomic) NSArray<Movie *> * movies;

+ (NSArray<Category*>*) getCategories;
@end

NS_ASSUME_NONNULL_END
