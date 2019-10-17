;;;;
;;;;Calculus generator game.
;;;;

;; Define global variables
(defvar input)
(defvar vround)
(defvar vdifficulty)

;; Program
(write-line "Vuoi iniziare una nuova partita? (Y/N)")
(dotimes (n 5)  ; Repeat for a maximum of 5 times
  (setq input (read)) ; Read user input
  
  (when (equal input 'N)
    (if (equal n 1)
	(write-line "Meglio tardi che mai!")
      (return))
    (write-line "Vuoi caricare l'ultima partita? (Y/N)")
    ;;; (load_game)
    (return))
    
  (when (equal input 'Y) ; If the user input is equal to the letter 'Y' (case insensitive), and:
    (if (equal n 1) ; if the loop has already cycled once, then:
	(write-line "Prosegui stronzo!") ; write string to output
      (return))
    (return))
  
  (unless (or (equal input 'Y) (= n 4)) ; If the user input is different from the letter 'Y' (case insensitive), then:
    (write-line "Rispondi bene o ti caccio!")) ; write string to output
  
  (when (equal n 4) ; If the loop has cycled more than 4 times; then: 
    (write-line "Sparisci da qui!") ; expect to
    (sb-ext:quit))) ; explode

;(princ "You answered: ")
;(write input)

(write-line "Quanti round vuoi giocare? (1-20)")
(setq vround (read)) ; Read user input
(princ "Hai scelto di giocare: ")
(write vround)
(write-line " round.")

(terpri)
(write-line "A quale difficolta vuoi giocare? (1-5)")
(setq vdifficulty (read)) ; Read user input
(princ "Hai scelto di giocare alla difficolta: ")
(write vdifficulty)


;; Exit interpreter
(terpri)  ; New line
(sb-ext:quit)
