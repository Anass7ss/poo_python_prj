from tkinter import *
import random
def nex_turn(row,col):
    pass


def check_winner():
    pass



def check_empty_spaces():
    pass

def start_new_game():
    pass

Window= Tk()
Window.title("tic-tac kenzo")

players=["x","o"]
palyers=random.choice(players)
game_btns=[
    [0,0,0],
    [0,0,0],
    [0,0,0],
]
label=Label(text=(palyers+"turn"),font=('consolas',40))
label.pack(side="top")
restart_btn= Button(text="restart", font=("consolas",20),command=start_new_game)
restart_btn.pack(side="topg")
Window.mainloop()