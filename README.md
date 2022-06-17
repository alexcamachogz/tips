<h1 align="center">Tips Calculator</h1>

![tips-calculator](https://socialify.git.ci/alexcamachogz/tips/image?language=1&name=1&owner=1&pattern=Solid&theme=Dark)

<p align="center">Tip calculator, forget about struggling to know how much each person has to pay and enjoy dinner with your friends.</p>

## Table of contents
- [Demo](#demo)
- [Features](#features)
- [Installation Step](#installation-steps)
- [The Process](#the-process)
  - [Built With](#built-with)
  - [Recently Learned](#recently-learned)
- [Useful resources](#useful-resources)
- [License](#license)
- [Author](#author)

## Demo

![Tips](https://media.giphy.com/media/ffMFr5fJl8VeNiGlTR/giphy.gif)

## Features

Here're some of the best features included on the project:

* Select between different percentages
* Select how many people you need to split the bill
* Results on another screen

## Installation Steps

1. Clone the repository
2. Open the project with Xcode
3. Run the app and enjoy it

### Built With
Technologies used in the project:

*   Swift 5.6
*   Xcode 13.3
*   iOS 15.5

### Recently Learned

Segues are visual connectors between view controllers in the storyboards, shown as lines between two controllers. They allow you to present one view controller from another.

```Swift
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
  if segue.identifier == "goToResult" {
      let destinationVC = segue.destination as! ResultViewController
      destinationVC.bmiValue = calculatorBrain.getBMIValue()
      destinationVC.bmiAdvice = calculatorBrain.getAdvice()
      destinationVC.bmiColor = calculatorBrain.getColor()
  }
}
```

## Useful resources

* [Canva](https://www.canva.com) - Used to create graphics.
* [Using Segues](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html) - A guide to implement segues in Swift

## License:

> This project is licensed under the MIT License


## Author

Made with 💜  by [alexcamachogz](https://twitter.com/alexcamachogz)
