
// Verbose version /(?:^|\B)#[a-zA-Z][a-zA-Z0-9_]{1,19}\b/g  replace [a-zA-Z0-9_] with \w.

exports.ValidateHashtag = /(?:^|\B)#[a-zA-Z][\w]{1,19}\b/g;

exports.ValidateMention = /(?:^|\B)@[a-zA-Z][\w]{1,19}\b/g;

exports.ValidateURL = /((([A-Za-z]{3,9}:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)/


