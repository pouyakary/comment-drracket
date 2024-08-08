#lang racket/base

;; Copyright 2024-present by Pouya Kary <kary@gnu.org>. All rights reserved.

(require quickscript)

;; ─── Kary Section Comment Generator ────────────────────────────

(define-script generate-kary-section-comment
  #:label "Generate Kary Section Comment"
  #:shortcut #\y
  #:shortcut-prefix (option)
  (λ (selection)
    (let* ([size (string-length selection)]
           [comment-size 60]
           [right-characters-length (- comment-size (+ size 2))]
           [right-line (make-string right-characters-length #\─)]
           [left-line ";; ─── "])
      (string-append left-line selection " " right-line))))
