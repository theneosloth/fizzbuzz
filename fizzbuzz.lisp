(defun fizzbuzz (n)
  "Standard implementation."
  (loop for i from 1 to n do
       (cond
         ((divisible-p i 15) (princ "fizzbuzz "))
         ((divisible-p i 3) (princ "fizz "))
         ((divisible-p i 5) (princ "buzz "))
         (t (format t "~a " i)))))

(defun fizzbuzz-recursive-naive (n)
  "Inefficient recursive implementation. Stack overflows at large values."
  (if (zerop n)
      (princ "0 ")
      (progn
        (fizzbuzz-recursive-naive (1- n))
        (cond
          ((divisible-p n 15) (princ "fizzbuzz "))
          ((divisible-p n 3) (princ "fizz "))
          ((divisible-p n 5) (princ "buzz "))
          (t (format t "~a " n))))))


(defun divisible-p (num divisor)
  "Returns T if NUM is divisible by DIVISOR, NIL otherwise."
  (zerop (mod num divisor)))

(defun fizzbuzz-recursive-optimized (n ls)
  "Tail optimized implementation. Builds up the cons list of fizzbuzz values up to N in LS"
  )

(defun fizzbuzz-recursive-optimized-helper (n)
  "Calls the tail optimized implementation."
  (labels ((fizzbuzz (n ls)
             (cond
               ((zerop n) ls)
               ((divisible-p n 15) (fizzbuzz (1- n) (cons "fizzbuzz" ls)))
               ((divisible-p n 3) (fizzbuzz (1- n) (cons "fizz" ls)))
               ((divisible-p n 5) (fizzbuzz (1- n) (cons "buzz" ls)))
               (t (fizzbuzz (1- n) (cons n ls))))))
    (fizzbuzz n nil)))

  (defun range (max &key (min 0))
    "Created a range from MIN to MAX."
    (loop for n from min below max
       collect n))

(defun fizzbuzzer (n)
  (cond
    ((zerop n) 0)
    ((divisible-p n 15) "fizzbuzz")
    ((divisible-p n 3) "fizz")
    ((divisible-p n 5) "buzz")
    (t n)))

(defun fizzbuzz-map (n)
  "Map implementation. "
  (format t "~{~A~^, ~}" (mapcar #'fizzbuzzer (range n))))
