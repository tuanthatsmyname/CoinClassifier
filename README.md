# Coin Classifier in Xcode Playground

Create and use an Image Classifier Model that recognizes the value of an Euro coin.

## What can I learn?
* Learn how to create an Image Classifier Model in the "creatingModel" Playground.
* Learn how to use an Image Classifier Model in the "usingModel" Playground.

## Using CoreML model in Playground
Xcode Playground doesn't recognize .mlmodel files by default.

To use a CoreML Model in the Playground please follow these steps:
1. Compile .mlmodel file to get the .mlmodelc folder with this command: `xcrun coremlcompiler compile CoinClassifier.mlmodel CoinClassifier.mlmodelc`. Then put the .mlmodelc folder into the Resources folder in the Playground.
1. Add the helper class of the model into the Source folder in the Playground. The helper class can be obtained in the iOS Xcode project, when the .mlmodel file is added to the project. Make sure to get the helper class and change all the classes, varibales and methods to `public`.
