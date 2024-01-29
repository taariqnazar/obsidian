So far I have understood that we need to create a representation using the Clarke- and Park transformation (these are two different transforms). 

The Clarke transform, represents the total current input $i_{a}, i_{b}, i_{c}$ from each phase A,B,C as a vector in some orthogonal $2d$ space with direction $\alpha, \beta$. This is a nice representation since we can use this to design a control system in terms of $I = a \alpha + b \beta$.

We then use the Park transform to represent the magnetic field of the rotor with some $2d$ space with directions $Q,D$. The goal is to generate a magnetic field with the stator that points in the direction $Q$ which is orthogonal to the magnetic field of the rotor. This generates torque and makes the motor spin. Note that the Park transform is a rotation of the Clarke frame with some $\theta$ that represents the direction of the rotors magnetic field. The value of $\theta$ needs to be estimated or evaluated using a sensor or and encoder.

Why are gate drivers important?