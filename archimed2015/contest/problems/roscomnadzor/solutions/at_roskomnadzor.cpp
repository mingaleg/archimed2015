#include <iostream>
#include <fstream>

char replace(char c) {
    if (c == 'e') {
        return '3';
    }
    if (c == 'o') {
        return '0';
    }
    if (c == 'i') {
        return '1';
    }
    if (c == 't') {
        return '7';
    }
    if (c == 'a') {
        return '4';
    }
    if (c == 's') {
        return '5';
    }
    return c;
}

std::string replace(std::string str) {
    for (size_t i = 0; i < str.size(); ++i) {
        str[i] = replace(str[i]);
    }
    return str;
}

int main() {
    std::string text;
    std::string pattern;
    std::cin >> text;
    std::cin >> pattern;
    text = replace(text);
    pattern = replace(pattern);
    if (text.find(pattern) != std::string::npos) {
        std::cout << "YES" << std::endl;
    } else {
        std::cout << "NO" << std::endl;
    }

    return 0;
}
