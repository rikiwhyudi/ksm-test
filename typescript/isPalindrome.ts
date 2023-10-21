function isPalindrome(args: string): boolean {
    const lowerCase = args.toLowerCase();
    
    let reversed = '';
    
    for (let i = lowerCase.length - 1; i >= 0; i--) {
        reversed += lowerCase[i];
    }
    
    return lowerCase === reversed;
}

const str = "kasurrusak";
console.log(`${str} isPalindrome: ` ,isPalindrome(str)); 
