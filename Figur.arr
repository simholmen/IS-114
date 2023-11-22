
bakgrunn = rectangle(200,200,"solid","maroon")
bakgrunn-to = rectangle(220, 220, "solid", "blue")
linje-en = rectangle(80, 25, "solid", "green")
linje-to = rectangle(25, 80, "solid", "green")
linje-tre = rectangle(90, 35, "solid", "pink")
linje-fire = rectangle(35, 90, "solid", "pink")

overlay-xy(linje-en, -60, -170, overlay-xy(linje-to, -115, -110, overlay-xy(linje-en, -60, -100, overlay-xy(linje-to, -60, -40, overlay-xy(linje-en, -60, -20,overlay-xy(linje-tre, -55, -165, overlay-xy(linje-fire, -110, -105, overlay-xy(linje-tre, -55, -95, overlay-xy(linje-fire, -55, -35, overlay-xy(linje-tre, -55, -15, overlay-xy(bakgrunn, -10, -10, bakgrunn-to)))))))))))