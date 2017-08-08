; �����ͼ�ĳߴ缰����(��ʹ��˫�ַ�����)
(define MAP_WIDTH    24)
(define MAP_HEIGHT   16)
(define MAP_BASE_X   1)
(define MAP_BASE_Y   1)

; �����ߵ���ز���
(define SNAKE_MIN_LEN   5)

; �����ͼ���״̬,�ֱ�Ϊ[�ո�|��ͷ|����|ʳ��]
(define BS_SPACE     0)
(define BS_SHEAD     1)
(define BS_SBODY     2)
(define BS_STAIL     3)
(define BS_FOOD      4)

; ������������ɫ,��ɫ�������[pcc32.h],˳��ͬ��.
(define myColors (list pcc-CYAN pcc-MAGENTA pcc-RED pcc-GREEN pcc-YELLOW))

; ������������״,ע���ǿ��ַ�[���������~��],˳��ͬ��.
(define mySharps (list "��" "��" "��" "��" "��"))

; �����ߵ��˶�����[��|��|��|��]
(define DIR_UP    1)
(define DIR_DOWN  2)
(define DIR_LEFT  3)
(define DIR_RIGHT 4)

(define make-snake-body cons)
(define snake-x car)
(define snake-y cdr)

(define mySnake '())

(define (initSnake)
  (set! mySnake (list (make-snake-body 10 3))))
  
(define (drawMap)
  )
  
(define (drawSnake)
  (pcc-setTextColor (list-ref myColors BS_SHEAD))
  (pcc-gotoTextPos (* (+ MAP_BASE_X (snake-x (list-ref mySnake 0)) 2))
                   (+ MAP_BASE_Y (snake-y (list-ref mySnake 0))))
  (display (list-ref mySharps BS_SHEAD)))
  
(define (main)
  (pcc-clearText)
  (pcc-fixConsoleSize (* (+ MAP_WIDTH 2) 2) (+ MAP_HEIGHT 5))
  (pcc-setCursorVisible 0)
  (pcc-setConsoleTitle "Snake by Hu Lang. 2017.08.09")
  
  (initSnake)
  (drawMap)
  (drawSnake)
  
  (pcc-jkGetKey))
  
(main)
;(define (loop) (display (pcc-jkGetKey)) (loop))
;(loop)
