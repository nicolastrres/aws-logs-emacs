;;; aws-logs.el --- Get AWS logs                     -*- lexical-binding: t; -*-

;; Copyright (C) 2019  Agustin

;; Author: Agustin <nagustin@nicolas.local>
;; Keywords: convenience, comm, tools

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;; Get AWS logs using <https://github.com/jorgebastida/awslogs>

;;;; Installation

;;;;; Manual

;; Install these required packages:

;; + awslogs <https://github.com/jorgebastida/awslogs>

;; Then put this file in your load-path, and put this in your init file:

;; (require 'aws-logs)

;;;; Credits

;; This package would not have been possible without the following
;; packages: awslogs[1], which does all the hard work.

;;
;;  [1] <https://github.com/jorgebastida/awslogs>

;;; Code:


(defgroup aws-logs nil
  "Settings for `aws-logs'."
  :link '(url-link "https://github.com/nicolastrres/aws-logs-emacs"))

(defcustom aws-logs-command "awslogs"
  "The 'aws-logs' command."
  :type 'string
  :group 'aws-logs)

(defcustom aws-logs-args '()
  "List of args to send to aws-logs command."
  :type '(repeat string)
  :group 'aws-logs)

(defun aws-logs ()
  "Get AWS logs"
  (interactive)
  (apply 'call-process
                    aws-logs-command nil "AWS LOGS"
                    nil (append (list "get") aws-logs-args)))

(provide 'aws-logs)

;;; aws-logs.el ends here
