The lecture will be split into two parts. The first part, an introduction to the
course and information about the course structure. The second part, a
follow-along demo, where I walk through how to install the software necessary for
the course. 

## Preperation
Register your github username in the [moodle course page](https://kurser.math.su.se/course/view.php?id=1333). If you havent
created a github account make sure to do that and register on the moodle page
as soon as possible so that you can be invited to the [github organization](https://github.com/mt4007-ht23/). 

**Bring your laptops**. I will aim to make some parts of the lecture interactive, and bringing
your laptop and following along will make it easier for you to complete the
homework.

Also, make sure you have read through this page before the lecture. You are not
expected to have done everything but it will be beneficial to have a grasp of
things to be done and since installing some of the software below will take
time, installing them prior to the lecture will be more effiecient!

## Classroom Demo
### Summary
During this lecture demo, I am going to go through the setup of some tools for the
course which can be used to finish the homeowkr assigments, which includes, Git, Github, Anaconda and Jupyter. These tools are not necessary
if you already of experience with git, github and markdown. We will also go through part
of the first homework. 

**These tools are not necessary to finish the exercises,
but are recommended for ease of use! If you're already familiar with git,
markdown etc you can use any tools you want**

Some alternatives to use:
- Rstudio + Knitr + R markdown (R) (git integration is possible with Rstudio).
  Checkout [this link](https://mt4007-ht22.github.io/class_instructions/day1.html). Highly recommended for R users.

- Visual Studio Code + Nbconvert (Python)
- Pweave (Python)

### Git and Github
#### What is Git and Github ?
Git is a tool used for version control of software projects, it is also very common to use git for easier collaborations in teams for larger projects.
The benefits of using git is extensive and during the course you will hopefully be convinced about using git. You can find more information about Git [here](https://en.wikipedia.org/wiki/Git).

Github is a cloud-based git repository. However, it is used for much more than just version control. 
Github is a space for developers to share and collaborate on projects, especially for the open source community. It is also space to
showcase ones technical ability to employers. Many developers use Github as
a resume. You can also find various open source
projects that that are free to use. Be very careful
when you use these projects and always make sure that you give proper credit to the original
creator. For instance, the template for the course website was cloned from a project on Github. You can find
the a link to the original creator in the footer of this page. Being affluent
with Github will save you a lot of time. 

#### How to install Git and Github Desktop 

By installing Github Desktop you get Graphical User Interface(GUI) for git which
automatically connects to your github account. You can install Github desktop by
going to [this link](https://desktop.github.com/). Follow the simple
intructions provided! Once you have downloaded and installed Github desktop, open it up and log
into your Github account. Now you should have git and github desktop installed.

### Anaconda and Jupyter
Anaconda is one of the most popular platforms for scientific computing. In full, it is a
bundle of various software used in data science, packaged succinctly. Jupyter 
is one of theses programs inlcuded and it is a popular choice for data scientist used for 
developing and presenting data anaylsis. You will use these tools to do the
homework and present your solutions.

#### How to install Anaconda and Jupyter Lab
We are going to install miniconda, which is, just as it is called, a mini version of Anaconda. To
install miniconda, go to the following [link](https://docs.conda.io/projects/miniconda/en/latest/). Follow the instructions! 

Once you are done with installing Anaconda(miniconda) we can now go ahead and set up our
anaconda environment. To do this you need to work with the command line interface (CLI),
which might seem daunting at first but it is very easy to work with.

The commands inserted into the CLI differs based on the
programming language you choose to use.

For python insert and run the following
```powershell
conda config --add channels conda-forge && conda create --name py_env pandas numpy matplotlib jupyterlab -y
```
and for R insert and run the following
```powershell
conda config --add channels conda-forge && conda create --name renv r-essentials r-base=4.1.3 -y
```
Anconda works in environments which are isolated instances of your
setup. You can multiple enviroment containing for instance
different packages and versions. You have now created an enviroment with
the specific packages that is needed for this course. Typically, one uses
enviroments for different projects so that your programming instance do not
get bloated with unecessary libraries.

After you have installed the necessary environment we can go ahead and open
jupyter lab by first activating the enviroment we have create using the command
```powershell
conda activate ENV_NAME
```
where `ENV_NAME` is `py_env` and `r_env` for python users and r users
respectively.

Finally, run the command
```powershell
jupyter lab
```
This should open up jupyter lab.

### Tieing it together
Now that you have everything installed its time to create your first notebook
and push it up to your github. This is part of the homework for this week. Check out
[homework 1](/homework/1).