# Installation

Replece **NR_INSTALL_KEY** environment variable:
    `NR_INSTALL_KEY=$NR_INSTALL_KEY`

## Name application

if (extension_loaded ('newrelic')) {
    newrelic_set_appname ("My App 1");
}
