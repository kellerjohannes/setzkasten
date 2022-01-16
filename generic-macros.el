(defmacro jk/let-if (if-condition then-bindings else-bindings &rest body)
  `(if ,if-condition
     (let ,then-bindings
       ,@body)
     (let ,else-bindings
       ,@body)))

