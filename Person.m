#import "Person.h"

@implementation Person

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName age:(NSInteger)age {
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _age = age;
    }
    return self;
}

- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@", _firstName, _lastName];
}

- (BOOL)isAdult {
    return _age >= 18;
}

@end
