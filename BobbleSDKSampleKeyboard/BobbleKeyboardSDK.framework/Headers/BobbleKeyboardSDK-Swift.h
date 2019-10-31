// Generated by Apple Swift version 5.1 (swiftlang-1100.0.270.13 clang-1100.0.33.7)
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wgcc-compat"

#if !defined(__has_include)
# define __has_include(x) 0
#endif
#if !defined(__has_attribute)
# define __has_attribute(x) 0
#endif
#if !defined(__has_feature)
# define __has_feature(x) 0
#endif
#if !defined(__has_warning)
# define __has_warning(x) 0
#endif

#if __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <Foundation/Foundation.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus)
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
# endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
typedef unsigned int swift_uint2  __attribute__((__ext_vector_type__(2)));
typedef unsigned int swift_uint3  __attribute__((__ext_vector_type__(3)));
typedef unsigned int swift_uint4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif
#if !defined(SWIFT_CLASS_PROPERTY)
# if __has_feature(objc_class_property)
#  define SWIFT_CLASS_PROPERTY(...) __VA_ARGS__
# else
#  define SWIFT_CLASS_PROPERTY(...)
# endif
#endif

#if __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if __has_attribute(objc_method_family)
# define SWIFT_METHOD_FAMILY(X) __attribute__((objc_method_family(X)))
#else
# define SWIFT_METHOD_FAMILY(X)
#endif
#if __has_attribute(noescape)
# define SWIFT_NOESCAPE __attribute__((noescape))
#else
# define SWIFT_NOESCAPE
#endif
#if __has_attribute(warn_unused_result)
# define SWIFT_WARN_UNUSED_RESULT __attribute__((warn_unused_result))
#else
# define SWIFT_WARN_UNUSED_RESULT
#endif
#if __has_attribute(noreturn)
# define SWIFT_NORETURN __attribute__((noreturn))
#else
# define SWIFT_NORETURN
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif
#if !defined(SWIFT_RESILIENT_CLASS)
# if __has_attribute(objc_class_stub)
#  define SWIFT_RESILIENT_CLASS(SWIFT_NAME) SWIFT_CLASS(SWIFT_NAME) __attribute__((objc_class_stub))
#  define SWIFT_RESILIENT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_class_stub)) SWIFT_CLASS_NAMED(SWIFT_NAME)
# else
#  define SWIFT_RESILIENT_CLASS(SWIFT_NAME) SWIFT_CLASS(SWIFT_NAME)
#  define SWIFT_RESILIENT_CLASS_NAMED(SWIFT_NAME) SWIFT_CLASS_NAMED(SWIFT_NAME)
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM_ATTR)
# if defined(__has_attribute) && __has_attribute(enum_extensibility)
#  define SWIFT_ENUM_ATTR(_extensibility) __attribute__((enum_extensibility(_extensibility)))
# else
#  define SWIFT_ENUM_ATTR(_extensibility)
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name, _extensibility) enum _name : _type _name; enum SWIFT_ENUM_ATTR(_extensibility) SWIFT_ENUM_EXTRA _name : _type
# if __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME, _extensibility) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_ATTR(_extensibility) SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME, _extensibility) SWIFT_ENUM(_type, _name, _extensibility)
# endif
#endif
#if !defined(SWIFT_UNAVAILABLE)
# define SWIFT_UNAVAILABLE __attribute__((unavailable))
#endif
#if !defined(SWIFT_UNAVAILABLE_MSG)
# define SWIFT_UNAVAILABLE_MSG(msg) __attribute__((unavailable(msg)))
#endif
#if !defined(SWIFT_AVAILABILITY)
# define SWIFT_AVAILABILITY(plat, ...) __attribute__((availability(plat, __VA_ARGS__)))
#endif
#if !defined(SWIFT_WEAK_IMPORT)
# define SWIFT_WEAK_IMPORT __attribute__((weak_import))
#endif
#if !defined(SWIFT_DEPRECATED)
# define SWIFT_DEPRECATED __attribute__((deprecated))
#endif
#if !defined(SWIFT_DEPRECATED_MSG)
# define SWIFT_DEPRECATED_MSG(...) __attribute__((deprecated(__VA_ARGS__)))
#endif
#if __has_feature(attribute_diagnose_if_objc)
# define SWIFT_DEPRECATED_OBJC(Msg) __attribute__((diagnose_if(1, Msg, "warning")))
#else
# define SWIFT_DEPRECATED_OBJC(Msg) SWIFT_DEPRECATED_MSG(Msg)
#endif
#if !defined(IBSegueAction)
# define IBSegueAction
#endif
#if __has_feature(modules)
#if __has_warning("-Watimport-in-framework-header")
#pragma clang diagnostic ignored "-Watimport-in-framework-header"
#endif
@import CoreGraphics;
@import Foundation;
@import ObjectiveC;
@import UIKit;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
#if __has_warning("-Wpragma-clang-attribute")
# pragma clang diagnostic ignored "-Wpragma-clang-attribute"
#endif
#pragma clang diagnostic ignored "-Wunknown-pragmas"
#pragma clang diagnostic ignored "-Wnullability"

#if __has_attribute(external_source_symbol)
# pragma push_macro("any")
# undef any
# pragma clang attribute push(__attribute__((external_source_symbol(language="Swift", defined_in="BobbleKeyboardSDK",generated_declaration))), apply_to=any(function,enum,objc_interface,objc_category,objc_protocol))
# pragma pop_macro("any")
#endif

@class NSXMLParser;
@class NSBundle;
@class NSCoder;
@class UITraitCollection;
@protocol UIViewControllerTransitionCoordinator;
@protocol UITextInput;

SWIFT_CLASS("_TtC17BobbleKeyboardSDK22KeyboardViewController")
@interface KeyboardViewController : UIInputViewController <NSXMLParserDelegate>
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
- (void)parser:(NSXMLParser * _Nonnull)parser didStartElement:(NSString * _Nonnull)elementName namespaceURI:(NSString * _Nullable)namespaceURI qualifiedName:(NSString * _Nullable)qName attributes:(NSDictionary<NSString *, NSString *> * _Nonnull)attributeDict;
- (void)parser:(NSXMLParser * _Nonnull)parser didEndElement:(NSString * _Nonnull)elementName namespaceURI:(NSString * _Nullable)namespaceURI qualifiedName:(NSString * _Nullable)qName;
- (void)parser:(NSXMLParser * _Nonnull)parser foundCharacters:(NSString * _Nonnull)string;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil SWIFT_UNAVAILABLE;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)animated;
- (void)traitCollectionDidChange:(UITraitCollection * _Nullable)previousTraitCollection;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id <UIViewControllerTransitionCoordinator> _Nonnull)coordinator;
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration;
- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation;
- (void)dismissKeyboard;
- (void)selectionWillChange:(id <UITextInput> _Nullable)textInput;
- (void)selectionDidChange:(id <UITextInput> _Nullable)textInput;
- (void)textDidChange:(id <UITextInput> _Nullable)textInput;
@end


SWIFT_CLASS("_TtC17BobbleKeyboardSDK24BLKeyboardViewController")
@interface BLKeyboardViewController : KeyboardViewController
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidAppear:(BOOL)animated;
- (void)viewWillDisappear:(BOOL)animated;
- (void)viewDidDisappear:(BOOL)animated;
- (void)didReceiveMemoryWarning;
- (void)viewWillAppear:(BOOL)animated;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id <UIViewControllerTransitionCoordinator> _Nonnull)coordinator;
@end


SWIFT_CLASS("_TtC17BobbleKeyboardSDK20BobbleCallBackString")
@interface BobbleCallBackString : NSObject
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

typedef SWIFT_ENUM(NSInteger, BobbleIMESettings, closed) {
  BobbleIMESettingsAUTO_CAPITALIZATION = 0,
  BobbleIMESettingsAUTO_CORRECTION = 1,
  BobbleIMESettingsWORD_SUGGESTION = 2,
  BobbleIMESettingsKEYPAD_CLICK_SOUND = 3,
  BobbleIMESettingsLOWERCASE_KEY_CAPS = 4,
};

@class UIView;
@class TextInputView;
@protocol BobbleWordCommitDelegate;
@protocol touchIdDelegate;
@protocol WordSuggestionDelegate;
@class KeyboardThemeModel;

/// Custom keyboard view controller
SWIFT_CLASS("_TtC17BobbleKeyboardSDK28BobbleKeyboardViewController")
@interface BobbleKeyboardViewController : BLKeyboardViewController
/// Show custom View in keyboard’s top bar place holder.
/// remark:
/// The view should be of a standard height; 45pt.
/// precondition:
/// <code>view</code> should not be nil.
/// \param view The view that needs to be shown.
///
- (void)setTopBarWithView:(UIView * _Nonnull)view;
/// Show a custom view in the custom view container. When this is called, the keyboard input view is closed and the custom view is shown. If already a custom view is visible, it is replaced by the newly provided custom view.
/// remark:
/// The view should be of the same height as the keyboard.
/// precondition:
/// <code>view</code> should not be nil.
/// \param view The view that needs to be shown.
///
- (void)showCustomViewWithView:(UIView * _Nonnull)view;
/// Show keyboard input view in case it was hidden due to previous call to showCustomView(View) and custom view was visible. Calling showKeyboardView() will close visible custom view (if any) and will show keyboard input view.
- (void)showKeyboardView;
/// The custom class that extends BobbleKeyboardViewController can call setInputTarget(TextInputView) API to set input method interaction target programmatically. The input target that is passed as argument to this API must extend TextInputView and its visible in any custom view container (top bar or main custom view) previously.
/// precondition:
/// <code>textView</code> should not be nil.
/// \param textView The view that needs to be shown.
///
- (void)setInputTargetWithTextView:(TextInputView * _Nonnull)textView keyboardMode:(NSInteger)keyboardMode;
- (void)setKeyboardTypeWithKeyboardMode:(NSInteger)keyboardMode;
/// The custom class that extends BobbleKeyboardViewController can call restoreInputTarget() API to restore input transaction back to host app. If a custom view was visible previously and also keyboard input view was visible, then only custom view is shown and keyboard input view is closed. After this API is called, any input interaction will be performed on the host app until and unless user does not manually focuses to a text field inside custom view
- (void)restoreInputTarget;
/// The custom class that extends BobbleKeyboardViewController can call setKeyboardLanguage() API to set the language of the keyboard. language could take string values “ar” or “en”.
/// precondition:
/// <code>value</code> should not be nil.
/// <ul>
///   <li>
///     Parameter: “en” for English and “ar” for Arabic.
///   </li>
/// </ul>
- (void)setKeyboardLanguageWithValue:(NSString * _Nonnull)value;
/// The custom class that extends BobbleKeyboardViewController can call setIMESettings() API to change keyboard’s settings programmatically. Here are the possible values of key parameter: AUTO_CAPITALIZATION, KEYPAD_CLICK_SOUND, WORD_SUGGESTION, AUTO_CORRECTION, LOWERCASE_KEY_CAPS.
/// precondition:
/// <code>value</code> and ‘key’ should not be nil.
- (void)setIMESettingsWithKey:(enum BobbleIMESettings)key value:(BOOL)value;
/// The custom class that extends BobbleKeyboardViewController can call showTopBar() API to control the visibility of the top bar.
/// precondition:
/// <code>Top bar</code> should be added.
- (void)showTopBar;
/// The custom class that extends BobbleKeyboardViewController can call hideTopBar() API to hide the visibility of the top bar.
/// precondition:
/// <code>Top bar</code> should be visible.
- (void)hideTopBar;
/// The custom class that extends BobbleKeyboardViewController can call showOverlay() API to render the passed along view ontop of the visible keyboard area.This view should allow for transparency so that the keyboard beneath may be visible
/// precondition:
/// <code>keyboard area</code> should be visible.
/// \param view The view that needs to be shown as a overlay.
///
- (void)showOverlayWithView:(UIView * _Nonnull)view;
/// The custom class that extends BobbleKeyboardViewController can call hideOverlay() API to hide the overlay view.
/// precondition:
/// <code>overlay view</code> should be visible.
- (void)hideOverlay;
/// The custom class that extends BobbleKeyboardViewController can call loadSuggestionView() API to load the passed in view onto the suggestion bar.
/// \param view The view that needs to be add in Suggestion Bar.
///
- (void)loadSuggestionViewWithView:(UIView * _Nonnull)view;
/// Client needs to set this delegate to recieve Input string after space and ‘.’
/// precondition:
///
/// protocol - BobbleCallBack (Inherit this protocol in your class)
/// @required - onWordCommit(string: String) to get call Back
/// \param - set this parameters where you want to implement onCommit method e.g - “self” 
///
- (void)setBobbleWordCommitDelegateWithDelegate:(id <BobbleWordCommitDelegate> _Nonnull)delegate;
- (void)TouchIdDelegateWithDelegate:(id <touchIdDelegate> _Nonnull)delegate;
- (void)setThresholdValueForAutoCorrectionWithValue:(double)value;
- (void)setWordSuggestionDelegateWithDelegate:(id <WordSuggestionDelegate> _Nonnull)delegate;
/// The custom class that extends BobbleKeyboardViewController can call loadTheme() to customize the keyboard theme
/// for Custom theme
/// parameters in KeyboardThemeModel -
/// keyboardBackgroundColor:String(pass the hex color string code)
/// keyColor:String(pass the hex color string code)
/// suggestionBarColor:String(pass the hex color string code)
/// suggestionDividerColor:String(pass the hex color string code)
/// suggestionTextColor:String(pass the hex color string code)
/// keyTextcolor:String(pass the hex color string code)
/// keyBorderColor:String(pass the hex color string code)
/// keyUnderLinecolor:String(pass the hex color string code)
/// isThemeDarkType:Bool (true for dark theme and false for light theme)
/// for Default theme
/// set parameter - nil
/// \param view pass the object of KeyboardThemeModel(all keys are mendatory)
///
- (void)loadThemeWithThemeObject:(KeyboardThemeModel * _Nullable)themeObject;
- (void)openViewForPrivateTextField;
- (void)openQRCodeScanner;
- (void)touchIdClicked;
- (void)changeFontWithFontName:(NSString * _Nonnull)fontName;
- (NSArray<NSString *> * _Nonnull)getAllFontName SWIFT_WARN_UNUSED_RESULT;
- (void)sendTextToConnectedInputWithText:(NSString * _Nonnull)text;
- (void)hideKeyboardView;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_PROTOCOL("_TtP17BobbleKeyboardSDK24BobbleWordCommitDelegate_")
@protocol BobbleWordCommitDelegate
- (void)onWordCommitWithString:(NSString * _Nonnull)string;
@end


SWIFT_CLASS("_TtC17BobbleKeyboardSDK15CustomTextField")
@interface CustomTextField : UITextField
- (nonnull instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_PROTOCOL("_TtP17BobbleKeyboardSDK35KeyboardReturnButtonClickedDelegate_")
@protocol KeyboardReturnButtonClickedDelegate
- (void)textViewShouldReturnWithTextView:(TextInputView * _Nonnull)textView;
@end

@class UIImage;

SWIFT_CLASS("_TtC17BobbleKeyboardSDK18KeyboardThemeModel")
@interface KeyboardThemeModel : NSObject
- (nonnull instancetype)initWithKeyboardBackgroundColor:(NSString * _Nonnull)keyboardBackgroundColor keyColor:(NSString * _Nonnull)keyColor suggestionBarColor:(NSString * _Nonnull)suggestionBarColor suggestionDividerColor:(NSString * _Nonnull)suggestionDividerColor suggestionTextColor:(NSString * _Nonnull)suggestionTextColor keyTextcolor:(NSString * _Nonnull)keyTextcolor keyBorderColor:(NSString * _Nonnull)keyBorderColor keyUnderLinecolor:(NSString * _Nonnull)keyUnderLinecolor isThemeDarkType:(BOOL)isThemeDarkType keyboardBackgroundImage:(UIImage * _Nonnull)keyboardBackgroundImage OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end




typedef SWIFT_ENUM(NSInteger, Source, closed) {
  SourceBobble = 0,
  SourceGCS = 1,
};


SWIFT_PROTOCOL("_TtP17BobbleKeyboardSDK17TextInputDelegate_")
@protocol TextInputDelegate
- (void)textInputViewObserverWithTextView:(TextInputView * _Nonnull)textView;
- (void)textViewShouldBeginEditingWithTextView:(TextInputView * _Nonnull)textView;
- (void)textViewDidEndEditingWithTextView:(TextInputView * _Nonnull)textView;
- (void)textViewShouldReturnWithTextView:(TextInputView * _Nonnull)textView;
@end

@class UIColor;
@class UIFont;
@class UIButton;
@class NSMutableString;
@class UITouch;
@class UIEvent;

SWIFT_CLASS("_TtC17BobbleKeyboardSDK13TextInputView")
@interface TextInputView : UIScrollView <UIKeyInput>
@property (nonatomic, strong) UIColor * _Null_unspecified textColor;
@property (nonatomic, strong) UIFont * _Null_unspecified textFont;
@property (nonatomic, strong) UIButton * _Nullable blinkButton;
@property (nonatomic) BOOL isPasswordProtacted;
@property (nonatomic, weak) id <TextInputDelegate> _Nullable textDelegate;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)setPlaceHolderWithStr:(NSMutableString * _Nonnull)str placeholderColor:(UIColor * _Nonnull)placeholderColor placeHolderFont:(UIFont * _Nonnull)placeHolderFont;
@property (nonatomic, readonly) BOOL hasText;
- (void)insertText:(NSString * _Nonnull)text;
- (void)deleteBackward;
- (NSString * _Nonnull)getText SWIFT_WARN_UNUSED_RESULT;
@property (nonatomic, readonly) BOOL canBecomeFirstResponder;
- (void)touchesBegan:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
- (void)hideBlinkView;
@end




SWIFT_CLASS("_TtC17BobbleKeyboardSDK14WordSuggestion")
@interface WordSuggestion : NSObject
@property (nonatomic, copy) NSArray<NSString *> * _Nonnull arrWordSuggestion;
@property (nonatomic) BOOL autocorrect;
@property (nonatomic) enum Source source;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_PROTOCOL("_TtP17BobbleKeyboardSDK22WordSuggestionDelegate_")
@protocol WordSuggestionDelegate
- (WordSuggestion * _Nonnull)bobbleKeyboard:(BLKeyboardViewController * _Nonnull)bobbleKeyboard nextWordsfor:(NSString * _Nonnull)word previousWord:(NSString * _Nonnull)previousWord pressedCharacter:(NSString * _Nonnull)pressedCharacter SWIFT_WARN_UNUSED_RESULT;
- (void)bobbleKeyboardWithTypedWord:(NSString * _Nonnull)typedWord ChoosedWord:(NSString * _Nonnull)ChoosedWord source:(enum Source)source wordsArray:(NSArray<NSString *> * _Nonnull)wordsArray;
- (void)bobbleKeyboardWithPrevWord:(NSString * _Nonnull)prevWord autoCorrectedWord:(NSString * _Nonnull)autoCorrectedWord isAutoCorrectWordAccepted:(BOOL)isAutoCorrectWordAccepted source:(enum Source)source wordsArray:(NSArray<NSString *> * _Nonnull)wordsArray;
- (NSArray<NSString *> * _Nonnull)bobbleKeyboard:(BLKeyboardViewController * _Nonnull)bobbleKeyboard wordPridictionfor:(NSString * _Nonnull)word previousWord:(NSString * _Nonnull)previousWord SWIFT_WARN_UNUSED_RESULT;
@end


SWIFT_PROTOCOL("_TtP17BobbleKeyboardSDK15touchIdDelegate_")
@protocol touchIdDelegate
- (void)touchIdActionWithIsSuccess:(BOOL)isSuccess;
@end

#if __has_attribute(external_source_symbol)
# pragma clang attribute pop
#endif
#pragma clang diagnostic pop
