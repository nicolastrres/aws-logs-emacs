# aws-logs-emacs

Get logs using [awslogs](https://github.com/jorgebastida/awslogs)

## Installation

### MELPA
This package is still not available in Melpa, therefore, please use the manual installation.

**Soon will be published in MELPA**

### Manual

1. Install [awslogs](https://github.com/jorgebastida/awslogs): `pip install awslogs `
2. Put [aws-logs.el](aws-logs.el) in your load-path
3. Put this in your init file: `(require 'aws-logs)`

## Usage

```elisp
(require 'aws-logs)

; set required args ; 
(setq aws-logs-args '(
  "/aws/lambda/toggler-dev-notifyUser" ; GROUP ;
  "ALL" "-s1d" ; EXPRESSION 1 day logs ; 
  "--aws-region" "us-east-1" ; REGION ;
))
```

See more options [here](https://github.com/jorgebastida/awslogs#options) 

## Credits

All the credits should go to [awslogs](https://github.com/jorgebastida/awslogs) which does all the hard work.

Also, some credit should go to [emacs-dev-package-handbook](https://github.com/alphapapa/emacs-package-dev-handbook) which was very helpful to write this simple package.

## License
```
Copyright (C) 2019  Agustin

Author: Agustin <nicolastrres@gmail.com>
Keywords: convenience, comm, tools

This program is free software; you can redistribute it and/or modify 
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
```
