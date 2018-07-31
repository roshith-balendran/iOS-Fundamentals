# Animations

### This is a detailed collection of all the animations that are available in Swift.

## UINavigationController

```swift
        let storyBoard = UIStoryboard(name: "KZBuy", bundle: nil)
        let destinationViewController: KZBuyViewController = storyBoard.instantiateViewController(withIdentifier: "KZBuyVC") as! KZBuyViewController
        let transition = CATransition.init()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        transition.type = kCATransitionFade
        transition.subtype = kCATransitionFromLeft //kCATransitionFromRight if you want to animate in opposite direction
        navigationController?.view.layer.add(transition, forKey: "pushViewController")
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        navigationController?.pushViewController(destinationViewController, animated: false)
```
