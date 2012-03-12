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
	error = NULL; // TODO I need to figure out what this means
	expression = [NSRegularExpression regularExpressionWithPattern: s
									  options:						0
									  error:						&error
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
	int result = [expression numberOfMatchesInString: str
	                                    options: 0
	                                    range: NSMakeRange(0, [str length])
				 ];
	if (result > 0) {
		return true;
	} else {
		return false;
	}
}

-(NSString*) replaceInString: (NSString *) str with: new_str {
	return [expression stringByReplacingMatchesInString:		str
							options:							0
				            range:								NSMakeRange(0, [str length])
				            withTemplate:						new_str
		   ];
}

@end