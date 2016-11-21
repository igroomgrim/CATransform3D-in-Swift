# CATransform3D-in-Swift
Basics example of using CATransform3D functions in Swift

## Example App
<img alt="CATransform3D Example" width=280 src="https://github.com/igroomgrim/CATransform3D-in-Swift/blob/master/catransfrom3d_ex3.png"/>
<img alt="CATransform3D Example" width=280 src="https://github.com/igroomgrim/CATransform3D-in-Swift/blob/master/catransfrom3d_ex1.png"/>
<img alt="CATransform3D Example" width=280 src="https://github.com/igroomgrim/CATransform3D-in-Swift/blob/master/catransfrom3d_ex2.png"/>

## Exploring ? :D
* 3D transformations in X,Y,Z axis
* Moving the anchor point from default (0.5,0.5)
* Set m34 (matrix element in the 3rd row at the 4th column) for your z-axis perspective
* 4x4 Matrix for 3D Spaces
* 
```swift
// 4x4 Matrix
[X][0][0][0]
[0][Y][0][0]
[0][0][Z][0]
[0][0][0][1]

// Structure in Swift
public struct CATransform3D {
  public init(m11: CGFloat, m12: CGFloat, m13: CGFloat, m14: CGFloat, 
              m21: CGFloat, m22: CGFloat, m23: CGFloat, m24: CGFloat, 
              m31: CGFloat, m32: CGFloat, m33: CGFloat, m34: CGFloat, 
              m41: CGFloat, m42: CGFloat, m43: CGFloat, m44: CGFloat)
}
```

## Contact Me

Anak Mirasing

- https://github.com/igroomgrim
- https://www.linkedin.com/in/anakmirasing
- https://twitter.com/igroomgrim
- http://www.igroomgrim.com/
- thaihooligan@hotmail.com
