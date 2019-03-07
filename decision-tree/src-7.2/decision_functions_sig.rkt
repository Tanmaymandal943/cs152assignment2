#lang racket

;candidate functions for the toy dataset
(provide y1)
(provide y2)
(provide y3)
(provide y4>62)

(define y1  (cons "feature1" (lambda (x) (list-ref x 0)))) ; returns the value of feature 1 for a given test sample
(define y2  (cons "feature2" (lambda (x) (list-ref x 1))))
(define y3  (cons "feature3" (lambda (x) (list-ref x 2))))
(define y4>62 (cons "feature4>62" (lambda (x) (if (> (list-ref x 3) 62)
                                                  1 0
                                               )))) ; returns 1 if the value of feature 4 > 62, else 0

;candidate functions for the titanic dataset
(provide pclass)
(provide sex)
(provide age>25)
(provide sibsp)
(provide parch)
(provide fare>50)
(provide emb)

(define (pclass record) (cons "pclass" (lambda (x) (list-ref x 0)))) ; returns the value of pclass for a given test sample
(define (sex record) (cons "sex" (lambda (x) (list-ref x 1))))
(define (age>25 record) (cons "age>25" (lambda (x) (if (> (list-ref x 2) 25)
                                                       1 0))))
(define (sibsp record) (cons "sibsp" (lambda (x) (list-ref x 3))))
(define (parch record) (cons "parch" (lambda (x) (list-ref x 4))))
(define (fare>50 record) (cons "fare>50" (lambda (x) (if (> (list-ref x 5) 50)
                                                         1 0))))
(define (emb record) (cons "emb" (lambda (x) (list-ref x 6))))

;candidate functions for the mushroom dataset
(provide cshape)
(provide csurf)
(provide bruise)
(provide odor)
(provide gatch)
(provide gspace)
(provide gsize)
(provide sshape)
(provide nring)
(provide pop)
(provide hab)

(define (cshape record) (cons "cshape" (...)))
(define (csurf record) (cons "csurf" (...)))
(define (bruise record) (cons "bruise" (...)))
(define (odor record) (cons "odor" (...)))
(define (gatch record) (cons "gatch" (...)))
(define (gspace record) (cons "gspace" (...)))
(define (gsize record) (cons "gsize" (...)))
(define (sshape record) (cons "sshape" (...)))
(define (nring record) (cons "nring" (...)))
(define (pop record) (cons "pop" (...)))
(define (hab record) (cons "hab" (...)))
