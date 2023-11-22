bakgrunn = rectangle(150, 150,"solid","blue")
form-1 = rectangle(70, 25, "solid", "green")
form-2 = rectangle(80, 40, "solid", "yellow")
form-3 = rectangle(35, 80, "solid", "pink")
form-4 = rectangle(50, 60, "solid", "orange")
form-5 = rectangle(80, 50, "solid", "maroon")
form-6 = rectangle(30, 100, "solid", "purple")
form-7 = rectangle(120, 50, "solid", "red")

step-1 = overlay-xy(form-1, 0, 0, bakgrunn)
step-2 = overlay-xy(form-2,0, -25, step-1)
step-3 = overlay-xy(form-5, -30, -60, step-2)
step-4 = overlay-xy(form-4, -100, 0, step-3)
step-5 = overlay-xy(form-3, -70, -0, step-4)
step-6 = overlay-xy(form-6, 0, -50, step-5)
step-7 = overlay-xy(form-7, -30, -100, step-6)

step-7
