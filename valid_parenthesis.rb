=begin
Prompt:
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']',
determine if the input string is valid.
An input string is valid if:
- Open brackets must be closed by the same type of brackets.
- Open brackets must be closed in the correct order.

Constraint:
1 <= s.length <= 104
s consists of parentheses only '()[]{}'.
=end

# @param {String} s
# @return {Boolean}
def is_valid(s)
    stack = []
    s.each_char {|c|
        if c == '(' || c == '[' || c == '{'
            stack.append(c)
        else
            return false if stack.empty?
            if c == ']' && stack[-1] == '[' ||
               c == ')' && stack[-1] == '(' ||
               c == '}' && stack[-1] == '{'
                stack.pop()
            else
                return false
            end
        end
    }
    return stack.empty?
end