
bakgrunn = rectangle(200,200,"solid","maroon")
bakgrunn-to = rectangle(220, 220, "solid", "blue")
linje-en = rectangle(80, 25, "solid", "green")
linje-to = rectangle(25, 80, "solid", "green")
linje-tre = rectangle(90, 35, "solid", "pink")
linje-fire = rectangle(35, 90, "solid", "pink")

overlay-xy(linje-en, -60, -170, overlay-xy(linje-to, -115, -110, overlay-xy(linje-en, -60, -100, overlay-xy(linje-to, -60, -40, overlay-xy(linje-en, -60, -20,overlay-xy(linje-tre, -55, -165, overlay-xy(linje-fire, -110, -105, overlay-xy(linje-tre, -55, -95, overlay-xy(linje-fire, -55, -35, overlay-xy(linje-tre, -55, -15, overlay-xy(bakgrunn, -10, -10, bakgrunn-to)))))))))))


step-1 = overlay-xy(bakgrunn, -10, -10, bakgrunn-to)
step-2 = overlay-xy(linje-tre, -55, -15, step-1)
step-3 = overlay-xy(linje-fire, -55, -35, step-2)
step-4 = overlay-xy(linje-tre, -55, -95, step-3)
step-5 = overlay-xy(linje-fire, -110, -105, step-4)
step-6 = overlay-xy(linje-tre, -55, -165, step-5)
step-7 = overlay-xy(linje-en, -60, -20, step-6)
step-8 = overlay-xy(linje-to, -60, -40, step-7)
step-9 = overlay-xy(linje-en, -60, -100, step-8)
step-10 = overlay-xy(linje-to, -115, -110, step-9)
step-11 = overlay-xy(linje-en, -60, -170, step-10)
step-11
