# Homework 1

**Goal**: Install GMT and check that everything is correctly setup in your computer.

Follow these steps to setup your computer with GMT and other software needed for the
workshop and check that everything is working. You'll run some GMT scripts and check
that you get the correct output.

**If you have any questions/problems**:

* Open an *Issue* on this repository by
  [clicking here](https://github.com/GenericMappingTools/2020-unavco-course/issues/new/choose).
  You'll need a GitHub account to do this.
* Alternatively, post to the [GMT Community Forum](https://forum.generic-mapping-tools.org/)

## Tasks

1. Follow the [install instructions](../INSTALL.md) to setup your computer.
2. Open a terminal (Mac: open the "Terminal" app; Windows: open "Git Bash").
   The following steps should be done in the terminal.
   To run a command, type it out and press *Enter*.
3. Run this command to download the workshop material using [git](https://en.wikipedia.org/wiki/Git):

   ```
   git clone https://github.com/GenericMappingTools/2020-unavco-course.git
   ```

   This will create a folder called `2020-unavco-course` in your computer.
4. Run this command to navigate to the `hw1` folder in `2020-unavco-course` and figure
   out where it is placed on your computer (each line is a command):

   ```
   cd 2020-unavco-course/hw1
   pwd
   ```

5. Run the [`test_1.sh`](test_1.sh) script:

   ```
   ./test_1.sh
   ```

   A window should pop up with a colored relief map of northern Africa. It should look
   like this (on a Mac, Preview may make it look a bit smoother):

   ![`2020-unavco-course/hw1/output/test1.pdf`](output/test1.png)
6. Run the [`test_2.sh`](test_2.sh) script:

   ```
   ./test_2.sh
   ```

   This should produce 2 files called `count.mp4` and `count.webm` in the
   `2020-unavco-course/hw1` folder. To open the mp4 movie (replace with `.webm`
   if the mp4 doesn't work on your system):

   * Mac: run `open count.mp4`
   * Linux: run `xdg-open count.mp4`
   * Windows: run `explorer count.mp4`

   The result should be an animation with numbers counting from 0 to 24 that looks like
   this:

   ![`2020-unavco-course/hw1/output/count.mp4`](output/count.gif)
7. Tell us if you were able to complete homework 1 (and give us some feedback so we can better prepare for the course) by filling out
   the following short [survey](https://docs.google.com/forms/d/1ahnMHrv8nSFB54Tc8BXz70ZUmHEy6uaNmMMsYSOQX3Y).
