//
//  BLWordSuggestions.h
//  Bobble
//
//  Created by Yashvant Sikarvar on 13/02/17.
//  Copyright © 2017 Touchtalent. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BLWordSuggestions : NSObject

- (instancetype)initWithKeyFrameArray:(NSArray *)sortedKeyFrames withKeyCharArray:(NSArray *)sortedKeyChars withWidth:(CGFloat)width withHeight:(CGFloat)height;

- (NSArray *)getSuggestionsForWord:(NSString *)word withPreviousWord:(NSString *)prevWord withCoordinate:(CGPoint)touchPoint canAutoCorrect:(BOOL *)autoCorrect;

- (NSArray *)getPredicWord:(NSString *)word withPreviousWord:(NSString *)prevWord withCoordinate:(CGPoint)touchPoint canAutoCorrect:(BOOL *)autoCorrect;

- (void)dismissWordSuggestor;

@property (nonatomic) NSNumber *isReady;

@end
