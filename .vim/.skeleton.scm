;; A simple Scheme program skeleton

;; Define global variables or constants
(define pi 3.14159)

;; Define utility functions
(define (square x)
  (* x x))

(define (factorial n)
  (if (= n 0)
      1
      (* n (factorial (- n 1)))))

;; Main function
(define (main)
  ;; Print a message
  (display "Hello, Scheme World!")
  (newline)
  
  ;; Demonstrate usage of a function
  (display "Square of 5: ")
  (display (square 5))
  (newline)
  
  ;; Calculate and display factorial of 5
  (display "Factorial of 5: ")
  (display (factorial 5))
  (newline)
  
  ;; Demonstrate some control structures
  (let ((x 10))
    (if (> x 5)
        (display "x is greater than 5")
        (display "x is less than or equal to 5")))
  (newline)
  
  ;; Loop through a list
  (for-each (lambda (n)
              (display n)
              (display " "))
            '(1 2 3 4 5))
  (newline)
  
  ;; Demonstrate basic recursion
  (define (countdown n)
    (if (> n 0)
        (begin
          (display n)
          (newline)
          (countdown (- n 1)))
        (display "Blast off!")))
  
  (countdown 5))

;; Call the main function
(main)
