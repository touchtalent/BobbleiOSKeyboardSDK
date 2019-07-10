
/*
 *  ____        _     _     _      ___ __  __ _____   ____  ____  _  __
 * | __ )  ___ | |__ | |__ | | ___|_ _|  \/  | ____| / ___||  _ \| |/ /
 * |  _ \ / _ \| '_ \| '_ \| |/ _ \| || |\/| |  _|   \___ \| | | | ' /
 * | |_) | (_) | |_) | |_) | |  __/| || |  | | |___   ___) | |_| | . \
 * |____/ \___/|_.__/|_.__/|_|\___|___|_|  |_|_____| |____/|____/|_|\_\
 *
 * Copyright (C) BobbleKeyboard@2018 - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BLWordSuggestions : NSObject

- (instancetype)initWithKeyFrameArray:(NSArray *)sortedKeyFrames withKeyCharArray:(NSArray *)sortedKeyChars withWidth:(CGFloat)width withHeight:(CGFloat)height;

- (NSArray *)getSuggestionsForWord:(NSString *)word withPreviousWord:(NSString *)prevWord withCoordinate:(CGPoint)touchPoint canAutoCorrect:(BOOL *)autoCorrect;

- (NSArray *)getPredicWord:(NSString *)word withPreviousWord:(NSString *)prevWord withCoordinate:(CGPoint)touchPoint canAutoCorrect:(BOOL *)autoCorrect;

- (void)dismissWordSuggestor;

@property (nonatomic) NSNumber *isReady;

@end
