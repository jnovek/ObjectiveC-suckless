#import <Foundation/NSRegularExpression.h>
#import "regex.h"

@implementation Regex

//
// Constructor
//

-(Regex*) initWithExpression: (NSString *) exp {
    self = [super init];
    if ( self ) {
        [self setExpression: exp];
    }
    return self;
}

//
// Accessor
//

-(void) setExpression: (NSString *) s {
	expression = [NSRegularExpression regularExpressionWithPattern: s
									  options:						0
									  error:						0
				 ];
}

//
// Class methods
//

+(bool) match: (NSString *) expression in: (NSString *) str {
	Regex *regex = [[Regex alloc] initWithExpression: expression];
	return [regex matchWithString: str];
}

+(NSString *) match: (NSString *) expression in: (NSString *) str andReplaceWith: replacment {
	Regex *regex = [[Regex alloc] initWithExpression: expression];
	NSString *newstring = [regex replaceInString: str with: replacment];
	return newstring;
}

//
// Instance methods
//

-(bool) matchWithString: (NSString *) str {
//	result = [expression ]
//	if (result == {NSNotFound, 0})
	return false;
}

-(NSString*) replaceInString: (NSString *) str with: new_str {
	return [expression stringByReplacingMatchesInString:		str
							options:							0
				            range:								NSMakeRange(0, [str length])
				            withTemplate:						new_str
		   ];
}

@end