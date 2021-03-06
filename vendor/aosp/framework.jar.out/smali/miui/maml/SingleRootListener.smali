.class public Lmiui/maml/SingleRootListener;
.super Ljava/lang/Object;
.source "SingleRootListener.java"

# interfaces
.implements Lmiui/maml/RendererController$Listener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SingleRootListener"


# instance fields
.field private mRenderable:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/maml/RendererController$IRenderable;",
            ">;"
        }
    .end annotation
.end field

.field private mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RendererController$IRenderable;)V
    .locals 0
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p2, "r"    # Lmiui/maml/RendererController$IRenderable;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lmiui/maml/SingleRootListener;->setRoot(Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {p0, p2}, Lmiui/maml/SingleRootListener;->setRenderable(Lmiui/maml/RendererController$IRenderable;)V

    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 2

    .prologue
    iget-object v1, p0, Lmiui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController$IRenderable;

    move-object v0, v1

    .local v0, "r":Lmiui/maml/RendererController$IRenderable;
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiui/maml/RendererController$IRenderable;->doRender()V

    :cond_0
    return-void

    .end local v0    # "r":Lmiui/maml/RendererController$IRenderable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->finish()V

    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->init()V

    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->onHover(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->resume()V

    return-void
.end method

.method public setRenderable(Lmiui/maml/RendererController$IRenderable;)V
    .locals 1
    .param p1, "r"    # Lmiui/maml/RendererController$IRenderable;

    .prologue
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lmiui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRoot(Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "root is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-void
.end method

.method public tick(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/ScreenElementRoot;->tick(J)V

    return-void
.end method

.method public triggerUpdate()V
    .locals 2

    .prologue
    iget-object v1, p0, Lmiui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController$IRenderable;

    move-object v0, v1

    .local v0, "r":Lmiui/maml/RendererController$IRenderable;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lmiui/maml/RendererController$ISelfUpdateRenderable;

    if-eqz v1, :cond_0

    check-cast v0, Lmiui/maml/RendererController$ISelfUpdateRenderable;

    .end local v0    # "r":Lmiui/maml/RendererController$IRenderable;
    invoke-interface {v0}, Lmiui/maml/RendererController$ISelfUpdateRenderable;->triggerUpdate()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
