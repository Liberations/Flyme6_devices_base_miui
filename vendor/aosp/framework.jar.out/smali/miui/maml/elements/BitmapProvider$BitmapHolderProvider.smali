.class public Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;
.super Lmiui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapHolderProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BitmapHolder"


# instance fields
.field private mBitmapHolder:Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

.field private mId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZII)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 2
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mBitmapHolder:Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mBitmapHolder:Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmiui/maml/elements/BitmapProvider$IBitmapHolder;->getBitmap(Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Ljava/lang/String;)V
    .locals 4
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1}, Lmiui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .local v1, "name":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, "dot":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    move-object v1, p1

    :goto_1
    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3, v1}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v2

    .local v2, "se":Lmiui/maml/elements/ScreenElement;
    instance-of v3, v2, Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

    if-eqz v3, :cond_0

    check-cast v2, Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

    .end local v2    # "se":Lmiui/maml/elements/ScreenElement;
    iput-object v2, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mBitmapHolder:Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mId:Ljava/lang/String;

    goto :goto_1
.end method
