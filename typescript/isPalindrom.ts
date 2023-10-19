function isPalindrome(args: string): boolean {
    const toLower = args.toLowerCase();
    
    let reversed = '';
    
    for (let i = toLower.length - 1; i >= 0; i--) {
        reversed += toLower[i];
    }
    
    return toLower === reversed;
}

const str = "kasurrusak";
console.log(`${str} isPalindrome: ` ,isPalindrome(str)); 
