#import <Foundation/NSObject.h>
#import <Foundation/NSRegularExpression.h>

@interface Regex: NSObject {
	NSRegularExpression *expression;
	NSError *error;
}

// Constructor
-(Regex*) initWithExpression: (NSString *) exp;


// Accessor
-(void) setExpression: (NSString *) s;


// Class methods
+(bool) match: (NSString *) expression in: (NSString *) str;
+(NSString *) match: (NSString *) expression in: (NSString *) str andReplaceWith: replacment;


// Instance methods
-(bool) matchWithString: (NSString *) str;
-(NSString*) replaceInString: (NSString *) str with: new_str;

@end