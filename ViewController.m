#import "ViewController.h"
#import "Person.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)submitButtonTapped:(id)sender {
    NSString *firstName = self.firstNameTextField.text;
    NSString *lastName = self.lastNameTextField.text;
    NSInteger age = [self.ageTextField.text integerValue];
    
    Person *person = [[Person alloc] initWithFirstName:firstName lastName:lastName age:age];
    NSString *result = [NSString stringWithFormat:@"%@ is %@an adult.", [person fullName], [person isAdult] ? @"" : @"not "];
    
    self.resultLabel.text = result;
}

@end
