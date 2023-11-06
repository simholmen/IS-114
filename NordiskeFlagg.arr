fun draw-nordic-flags(bakgrunn-horisontal, bakgrunn-vertikal, stor-stripe, liten-stripe, farge-bakgrunn, stor-farge, liten-farge) -> Image:

  bakgrunn = rectangle(bakgrunn-horisontal, bakgrunn-vertikal, "solid",farge-bakgrunn)
  stor-stripe-horisontal = rectangle(bakgrunn-horisontal, stor-stripe, "solid", stor-farge)
  stor-stripe-vertikal = rectangle(stor-stripe, bakgrunn-vertikal, "solid", stor-farge)
  liten-stripe-horisontal = rectangle(bakgrunn-horisontal, liten-stripe, "solid", liten-farge)
  liten-stripe-vertikal = rectangle(liten-stripe, bakgrunn-vertikal, "solid", liten-farge)

  frame(overlay-xy(liten-stripe-vertikal, (((bakgrunn-vertikal - stor-stripe) / 2) + (stor-stripe / 4)) * -1,0, overlay-align("middle", "middle",liten-stripe-horisontal,overlay-xy(stor-stripe-vertikal,((bakgrunn-vertikal - stor-stripe) / 2) * -1,0,overlay(stor-stripe-horisontal, bakgrunn)))))
end

draw-nordic-flags(220, 160, 40, 20, "red", "white", "blue")
draw-nordic-flags(220, 160, 40, 20, "white", "blue", "red")
draw-nordic-flags(250, 180, 40, 20, "blue", "white", "red")
draw-nordic-flags(160, 100, 20, 00, "blue", "yellow", "yellow")
draw-nordic-flags(370, 280, 40, 00, "red", "white", "white")
draw-nordic-flags(180, 110, 30, 00, "white", "blue", "blue")