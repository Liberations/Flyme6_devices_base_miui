.class final Lmeizu/view/MoveWinManager$MoveWinCallback;
.super Lmeizu/view/IMoveWinCallback$Stub;
.source "MoveWinManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/view/MoveWinManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MoveWinCallback"
.end annotation


# instance fields
.field private l:Lmeizu/view/MoveWinManager$MoveWinListener;

.field final synthetic this$0:Lmeizu/view/MoveWinManager;


# direct methods
.method private constructor <init>(Lmeizu/view/MoveWinManager;)V
    .locals 0
    .param p1, "this$0"    # Lmeizu/view/MoveWinManager;

    .prologue
    iput-object p1, p0, Lmeizu/view/MoveWinManager$MoveWinCallback;->this$0:Lmeizu/view/MoveWinManager;

    invoke-direct {p0}, Lmeizu/view/IMoveWinCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmeizu/view/MoveWinManager;Lmeizu/view/MoveWinManager$MoveWinCallback;)V
    .locals 0
    .param p1, "this$0"    # Lmeizu/view/MoveWinManager;

    .prologue
    invoke-direct {p0, p1}, Lmeizu/view/MoveWinManager$MoveWinCallback;-><init>(Lmeizu/view/MoveWinManager;)V

    return-void
.end method


# virtual methods
.method public notifyClient(II)V
    .locals 1
    .param p1, "msg"    # I
    .param p2, "data"    # I

    .prologue
    iget-object v0, p0, Lmeizu/view/MoveWinManager$MoveWinCallback;->l:Lmeizu/view/MoveWinManager$MoveWinListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lmeizu/view/MoveWinManager$MoveWinCallback;->l:Lmeizu/view/MoveWinManager$MoveWinListener;

    invoke-interface {v0}, Lmeizu/view/MoveWinManager$MoveWinListener;->toResetMovedWin()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lmeizu/view/MoveWinManager$MoveWinCallback;->l:Lmeizu/view/MoveWinManager$MoveWinListener;

    invoke-interface {v0}, Lmeizu/view/MoveWinManager$MoveWinListener;->movedWinHasBeenReset()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lmeizu/view/MoveWinManager$MoveWinCallback;->l:Lmeizu/view/MoveWinManager$MoveWinListener;

    invoke-interface {v0, p2}, Lmeizu/view/MoveWinManager$MoveWinListener;->imeWillShow(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lmeizu/view/MoveWinManager$MoveWinCallback;->l:Lmeizu/view/MoveWinManager$MoveWinListener;

    invoke-interface {v0}, Lmeizu/view/MoveWinManager$MoveWinListener;->imeWillHide()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setMoveWinListener(Lmeizu/view/MoveWinManager$MoveWinListener;)V
    .locals 0
    .param p1, "listener"    # Lmeizu/view/MoveWinManager$MoveWinListener;

    .prologue
    iput-object p1, p0, Lmeizu/view/MoveWinManager$MoveWinCallback;->l:Lmeizu/view/MoveWinManager$MoveWinListener;

    return-void
.end method
