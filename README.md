# Pyhton
act-logo
Overview push Join the chat at https://gitter.im/nektos/act Go Report Card awesome-runners
"Think globally, act locally"

Run your GitHub Actions locally! Why would you want to do this? Two reasons:

Fast Feedback - Rather than having to commit/push every time you want to test out the changes you are making to your .github/workflows/ files (or for any changes to embedded GitHub actions), you can use act to run the actions locally. The environment variables and filesystem are all configured to match what GitHub provides.
Local Task Runner - I love make. However, I also hate repeating myself. With act, you can use the GitHub Actions defined in your .github/workflows/ to replace your Makefile!
How Does It Work?
When you run act it reads in your GitHub Actions from .github/workflows/ and determines the set of actions that need to be run. It uses the Docker API to either pull or build the necessary images, as defined in your workflow files and finally determines the execution path based on the dependencies that were defined. Once it has the execution path, it then uses the Docker API to run containers for each action based on the images prepared earlier. The environment variables and filesystem are all configured to match what GitHub provides.

Let's see it in action with a sample repo!

Demo

Act User Guide
Please look at the act user guide for more documentation.

Support
Need help? Ask on Gitter!

Contributing
Want to contribute to act? Awesome! Check out the contributing guidelines to get involved.

Manually building from source
Install Go tools 1.20+ - (https://golang.org/doc/install)
Clone this repo git clone git@github.com:nektos/act.git
Run unit tests with make test
Build and install: make install
