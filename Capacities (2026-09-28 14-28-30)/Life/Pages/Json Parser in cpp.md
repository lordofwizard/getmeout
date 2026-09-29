---
type: 'Page'
collections: 'Cpp'
title: Json Parser in cpp
aliases: null
description: null
icon: null
createdAt: '2024-12-07T16:26:47.256Z'
lastUpdated: '2024-12-07T16:29:09.264Z'
tags: []
coverImage: null
---

# Json Parser in cpp

```bash
git clone https://github.com/nlohmann/json

```

just `cp -r include` from the above.

you only need that

make sure you

`-Iinclude` it in your `Makefile`




used this with [[Arjun Salunkhe]]



eg code. 



```c++

#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include "nlohmann/json.hpp"  // Include nlohmann/json library

// For convenience
using json = nlohmann::json;

// Struct to represent a file signature object
struct FileSignature {
    std::string fileDescription;
    std::string headerHex;
    std::string fileExtension;
    std::string fileClass;
    std::string headerOffset;
    std::string trailerHex;
};

// Function to parse the JSON file and return an array of FileSignature objects
std::vector<FileSignature> parseJsonFile(const std::string& filePath) {
    std::vector<FileSignature> fileSignatures;

    // Read the JSON file
    std::ifstream inputFile(filePath);
    if (!inputFile.is_open()) {
        throw std::runtime_error("Unable to open file: " + filePath);
    }

    json jsonData;
    inputFile >> jsonData;

    // Parse the "filesigs" array
    for (const auto& sig : jsonData["filesigs"]) {
        FileSignature fs;
        fs.fileDescription = sig.value("File description", "");
        fs.headerHex = sig.value("Header (hex)", "");
        fs.fileExtension = sig.value("File extension", "");
        fs.fileClass = sig.value("FileClass", "");
        fs.headerOffset = sig.value("Header offset", "");
        fs.trailerHex = sig.value("Trailer (hex)", "");

        fileSignatures.push_back(fs);
    }

    return fileSignatures;
}

int main() {
    try {
        const std::string filePath = "file_sigs.json";
        auto fileSignatures = parseJsonFile(filePath);

        // Print parsed data
        for (const auto& sig : fileSignatures) {
            std::cout << "File Description: " << sig.fileDescription << "\n";
            std::cout << "Header (hex): " << sig.headerHex << "\n";
            std::cout << "File Extension: " << sig.fileExtension << "\n";
            std::cout << "File Class: " << sig.fileClass << "\n";
            std::cout << "Header Offset: " << sig.headerOffset << "\n";
            std::cout << "Trailer (hex): " << sig.trailerHex << "\n\n";
        }

    } catch (const std::exception& ex) {
        std::cerr << "Error: " << ex.what() << "\n";
    }

    return 0;
}

```


